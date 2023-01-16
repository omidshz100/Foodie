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
    
    //test commit
    
    var body: some View {
        NavigationStack{
            ScrollView(){
                ForEach(0..<images.count){image  in
                    RecipesRow(imageName: images[image], recipeName: recipes[image])
                }
            }
            .scrollIndicators(.hidden)
        }
    }
}
struct Recipes_Previews: PreviewProvider {
    static var previews: some View {
        Recipes()
    }
}
