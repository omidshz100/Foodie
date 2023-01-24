//
//  Ingredients.swift
//  Foodie
//
//  Created by Laura Bognanni on 12/01/23.
//

import SwiftUI

struct Ingredients: View {
    @ObservedObject
    var apis = APIsViewModel()
    
    @State var text:String = ""
    
    var body: some View {
        VStack{
//            Text("Select your ingredients!")
//                .font(.system(size: 32, weight: .semibold))
//            ScrollView{
//                if var ingredientsList = self.apis.ingredients {
//                    let arrDivider = arrayDivider(totalNumber: ingredientsList.meals!.count)
//                    var data = divideTo(array: ingredientsList.meals!, itemNumbers: arrDivider)
//
//                    ForEach(0..<data.count) { item in
//                        ForEach(0..<data[item].count){ items in
//                            IngredientCell(data: data[item].map({ itemModel in
//                                return itemModel.strIngredient ?? "No Name"
//                            }))
//                        }
//                    }
//                }
//            }
//            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
//                print(IngredientSelected.selectedIngredient)
//            }
            
            HStack{
                Text("Search Ingredient")
                    .bold().font(.title)
                Spacer()
            }
            .padding()
            HStack{
                Image(systemName: "magnifyingglass")
                TextField("Search here", text: $text)

            }
         
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal, 10)
                .onTapGesture {
                    print("somethoing")
                }
            Spacer(minLength: 15)
            ScrollView(.vertical){
                LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())], spacing: 5) {
                    ForEach(0..<(self.apis.ingredients?.meals?.count ?? 1), id: \.self){
                        item in
                        BtnTogglable(actionOnTap:  { isSelected, btnTitle in
                            print(btnTitle)
                        }, btnTitle: (self.apis.ingredients?.meals?[item].strIngredient ?? "NoName"))
                        .frame(width: 150)
                    }
                    .padding(5)
                }
            }
        }.onAppear(){
            Task{
                await self.apis.gettingAllGredients()
            }
        }
    }
}

struct Ingredients_Previews: PreviewProvider {
    static var previews: some View {
        Ingredients()
    }
}

func divideTo<T>(array:[T],itemNumbers:[Int])->[[T]]{
    var newArr:[[T]] = []
    var indexer = 0
    for item in itemNumbers{
        var setsItem:[T] = []
        for _ in 0..<item {
            setsItem.append(array[indexer])
            indexer += 1
        }
        newArr.append(setsItem)
    }
    
    return newArr
}

func arrayDivider(totalNumber:Int)->[Int]{
    var randomCounts:[Int] = []
    var count = totalNumber
    while count > 0 {
        let rand = Int.random(in: 1...count)
        if rand < 2 {
            continue
        }
        randomCounts.append(rand)
        if count - rand < 0 {
            randomCounts.append(count)
        } else {
            count -= rand
        }
    }
    return randomCounts
}
