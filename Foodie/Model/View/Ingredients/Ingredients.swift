//
//  Ingredients.swift
//  Foodie
//
//  Created by Laura Bognanni on 12/01/23.
//

import SwiftUI

struct Ingredients: View {
    var body: some View {
        VStack{
            Text("Select your ingredients!")
                .font(.system(size: 32, weight: .semibold))
            ScrollView{
                ForEach(0..<10){item in
                    IngredientCell()
                }
            }
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                print(IngredientSelected.selectedIngredient)
            }
        }
    }
}

struct Ingredients_Previews: PreviewProvider {
    static var previews: some View {
        Ingredients()
    }
}
