//
//  Ingredients.swift
//  Foodie
//
//  Created by Laura Bognanni on 12/01/23.
//

import SwiftUI

struct Ingredients: View {
    var body: some View {
        ScrollView{
            ForEach(0..<10){item in
                IngredientCell()
            }
        }
    }
}

struct Ingredients_Previews: PreviewProvider {
    static var previews: some View {
        Ingredients()
    }
}
