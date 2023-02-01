//
//  Recipe3Detail.swift
//  Foodie
//
//  Created by Giada Pisani on 01/02/23.
//

import SwiftUI

struct Recipe3Detail: View {
    var body: some View {
        
        ScrollView{
            VStack{
                HStack{
                    Text("Savory Pie Crust")
                        .font(.system(size: 40, weight: .semibold))
                        Spacer()
               
                    
                    Button(action: {}) {
                        Image(systemName: "heart") .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                            .frame(width: 30.0, height: 30.0)
                        
                        
                    }
                    .foregroundColor(.black)
                    
                }
                
                
                Image("pic3")
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
                    
                    Text("10'")  .font(.system(size: 32, weight: .semibold))
                }
                Text("2 cups all purpose flour\n¼ teaspoon salt\n¼ cup olive oil\n1 ½ tablespoons cold water ")
                    .font(.system(size: 22, weight: .regular))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    Divider()
                Text("Steps:")
                    .font(.system(size: 32, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
             
                
                
                
                Text("In a large bowl or bowl of a food processor whisk together the flour and salt, then add the olive oil, stir with a fork or pulse to combine to form coarse crumbs.\nSlowly add the cold water and continue stirring or pulsing until dough comes together.\nMove the dough to a lightly floured flat surface and knead until smooth. \nWrap the dough in plastic and refrigerate one hour before using.")
                    .font(.system(size: 22, weight: .regular))

                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                
                
            }
        }
        .scrollIndicators(.hidden)
        .padding()
    }
}

struct Recipe3Detail_Previews: PreviewProvider {
    static var previews: some View {
        Recipe3Detail()
    }
}
