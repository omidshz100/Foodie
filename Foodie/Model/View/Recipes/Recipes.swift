//
//  Recipes.swift
//  Foodie
//
//  Created by Laura Bognanni on 12/01/23.
//

import SwiftUI


struct Recipes: View, Hashable {
    var images = ["pic1", "pic2", "pic3", "pic4"]
    var recipes = ["Tortillas", "Churros", "Savory Pie Crust", "Vegan Pasta"]

    
    var body: some View {
        NavigationStack(){
            ScrollView(){
                ForEach(0..<images.count) { image in
                    NavigationLink {
                        RecipeDetail()
                    } label: {
                        RecipesRow(imageName: images[image], recipeName: recipes[image])
                    }

                }
            }
            .scrollIndicators(.hidden)
            .navigationTitle("Recipes")
        }
    }
}

struct Recipes_Previews: PreviewProvider {
    static var previews: some View {
        Recipes()
    }
}
