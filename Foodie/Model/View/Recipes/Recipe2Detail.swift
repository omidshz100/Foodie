//
//  Recipe2Detail.swift
//  Foodie
//
//  Created by Giada Pisani on 01/02/23.
//

import SwiftUI

struct Recipe2Detail: View {
    var body: some View {
        
        ScrollView{
            VStack{
                HStack{
                    Text("Churros")
                        .font(.system(size: 40, weight: .semibold))
                        Spacer()
               
                    
                    Button(action: {}) {
                        Image(systemName: "heart") .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                            .frame(width: 30.0, height: 30.0)
                        
                        
                    }
                    .foregroundColor(.black)
                    
                }
                
                
                Image("pic2")
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
                    
                    Text("20'")  .font(.system(size: 32, weight: .semibold))
                }
                Text("1 cup all-purpose flour\n2 tablespoons vegetable oil\n1 cup water\n2 quarts oil for frying\n2 ½ tablespoons white sugar")
                    .font(.system(size: 22, weight: .regular))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    Divider()
                Text("Steps:")
                    .font(.system(size: 32, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
             
                
                
                
                Text("Boil water, sugar, salt, and vegetable oil. Remove from the heat, then stir in flour.\nTransfer the dough to a pastry bag and pipe into strips.\nFry the strips in hot oil until they're golden.\nDrain the churros, then roll in cinnamon-sugar.")
                    .font(.system(size: 22, weight: .regular))

                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                
                
            }
        }
        .scrollIndicators(.hidden)
        .padding()
    }
}

struct Recipe2Detail_Previews: PreviewProvider {
    static var previews: some View {
        Recipe2Detail()
    }
}
