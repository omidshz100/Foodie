//
//  IngredientCell.swift
//  Foodie
//
//  Created by Omid Shojaeian Zanjani on 18/01/23.
//

import SwiftUI

struct IngredientCell: View {
    var data:[String] = []
    
    var body: some View {
        VStack{
            HStack(alignment: .top){
                Image(systemName: "apple.logo")
                    .font(.system(size: 30))
                Text("Category Title")
                    .font(.system(size: 30))
                Spacer()
            }.padding()
            
            ScrollView(.horizontal){
                        LazyHGrid(rows: [GridItem(.flexible()),
                                            GridItem(.flexible()),
                                            GridItem(.flexible())]) {
                            ForEach(1..<Int(data.count), id: \.self){ item in
                                BtnTogglable(actionOnTap:  { isSelected, btnTitle in
                                    if isSelected {
                                        print(btnTitle)
                                        
                                        IngredientSelected.selectedIngredient.append(btnTitle)
                                    }
                                }, btnTitle: data[item])
                                }
                        }
                    }.frame(height: 200)
                        .padding()
            
            Divider()
        }
        
    }
}

struct IngredientCell_Previews: PreviewProvider {
    static var previews: some View {
        IngredientCell()
    }
}
