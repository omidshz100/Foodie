//
//  RecipeDetail.swift
//  Foodie
//
//  Created by Laura Bognanni on 12/01/23.
//

import SwiftUI

struct RecipeDetail: View {
    var body: some View {
        
        ScrollView{
            VStack{
                HStack{
                    Text("Tortillas")
                        .font(.system(size: 40, weight: .semibold))
                        Spacer()
               
                    
                    Button(action: {}) {
                        Image(systemName: "heart.fill") .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                            .frame(width: 30.0, height: 30.0)
                        
                        
                    }
                    .foregroundColor(.black)
                    
                }
                
                
                Image("pic1")
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
                Text("2 cups flour\n1/2 teaspoon salt\n3/4 cup water\n3 tablespoons olive oil")
                    .font(.system(size: 22, weight: .regular))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    Divider()
                Text("Steps:")
                    .font(.system(size: 32, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
             
                
                
                
                Text("In a large bowl, combine flour and salt. Stir in water and olive oil to form a soft dough. Let rest 10 minutes.\nDivide the dough into 8-12 pieces and roll each piece into a circle.\nHeat a large skillet or griddle over medium-high heat, and cook tortillas, turning when bubbles start to appear. The whole cooking process should take between 2 and 3 minutes per tortilla.\nWrap tortillas in a towel to keep warm, and serve immediately.")
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
            RecipeDetail()
        
    }
}
