//
//  RecipeDetail.swift
//  Foodie
//
//  Created by Laura Bognanni on 12/01/23.
//

import SwiftUI

struct RecipeDetail: View {
    var recipe:RecipeInfo.RecipeDetails
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Text(recipe.title)
                        .font(.system(size: 40, weight: .semibold))
                        Spacer()
                    Button(action: {}) {
                        Image(systemName: "heart") .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                            .frame(width: 30.0, height: 30.0)
                    }
                    .foregroundColor(.black)
                }
                Image(recipe.imageName)
                    .resizable()
                    .frame(width: 350, height: 250)
                    .cornerRadius(25)
                HStack{
                    Text("Ingredients:")
                        .font(.system(size: 32, weight: .semibold))
                    Spacer()

                    Image(systemName: "stopwatch")
                        .resizable(capInsets: EdgeInsets(top: 0.0, leading: -1.0, bottom: 0.0, trailing: 0.0))
                        .frame(width: 30, height: 30)
                    
                    Text("13'")  .font(.system(size: 32, weight: .semibold))
                }
                Text(recipe.ingredients)
                    .font(.system(size: 22, weight: .regular))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    Divider()
                Text("Steps:")
                    .font(.system(size: 32, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(recipe.steps)
                    .font(.system(size: 22, weight: .regular))

                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
        .scrollIndicators(.hidden)
        .padding()

    }
}
    struct RecipeDetail_Previews: PreviewProvider {
        static var previews: some View {
            RecipeDetail(recipe: RecipeInfo.shared.getSample())
        
    }
}
