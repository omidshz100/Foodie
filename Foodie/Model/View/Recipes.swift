//
//  Recipes.swift
//  Foodie
//
//  Created by Laura Bognanni on 12/01/23.
//

import SwiftUI

struct Recipes: View {
    var images = ["pic1", "pic2", "pic3", "pic4"]
    var recipes = ["Tortillas", "Churros", "Savory Pie Crust", "Vegan Pasta"]
    var body: some View {
        List{
            ForEach(0..<images.count){val  in
                RecipesRow(imageName: images[val], recipeName: recipes[val])
                    
            }
            .listRowBackground(Color.clear)
            .listRowSeparator(.hidden)
        }
    }
}

struct Recipes_Previews: PreviewProvider {
    static var previews: some View {
        Recipes()
    }
}
