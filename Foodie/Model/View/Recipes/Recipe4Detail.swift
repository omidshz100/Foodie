//
//  Recipe4Detail.swift
//  Foodie
//
//  Created by Giada Pisani on 01/02/23.
//

import SwiftUI

struct Recipe4Detail: View {
    var body: some View {
        
        ScrollView{
            VStack{
                HStack{
                    Text("Vegan Pasta")
                        .font(.system(size: 40, weight: .semibold))
                        Spacer()
               
                    
                    Button(action: {}) {
                        Image(systemName: "heart") .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                            .frame(width: 30.0, height: 30.0)
                        
                        
                    }
                    .foregroundColor(.black)
                    
                }
                
                
                Image("pic4")
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
                    
                    Text("55'")  .font(.system(size: 32, weight: .semibold))
                }
                Text("1 ¼ cup all-purpose flour\n¾ cup water\n2 tsp olive oil\n½ tsp salt")
                    .font(.system(size: 22, weight: .regular))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    Divider()
                Text("Steps:")
                    .font(.system(size: 32, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
             
                
                
                
                Text("Mix both flours, water, and olive oil until it forms a crumbled texture.Use your fingers to create a well, pouring in olive oil and a little bit of water. Begin mixing, swirling the water and oil in a circular motion as you gather flour, adding water slowly as you go until all of the water is absorbed.\nAfter mixing the flour, water, and oil, place the dough on a floured surface and use your hands to knead the dough until it’s ready. Add a little water if it’s dry, and add in more flour if it’s too wet. Kneading should take approximately 8–10 minutes.\nRoll your dough into a ball and wrap it in plastic wrap and let it rest in the refrigerator for 30 minutes.\nReturn the dough to your work surface and divide into two sections to make the amount you're rolling more manageable. Use either a pasta machine or a rolling pin to roll out the dough until it’s a thin, but still firm, sheet. With the other half of your dough, repeat the process.\nDust the dough with flour and loosely roll it. Take a knife and cut the noodles as wide as you prefer in the same direction you just rolled it. Then take each slice and unroll it to reveal the long, thin pasta noodle you just made. Set aside each one in a little pile.\nAdd the salt to a large pot of boiling water; then, add the noodles and stir until they float to the top, which should take approximately 3–4 minutes. Serve with your favorite pasta sauce, protein, and veggies. If you’re not in the mood for fresh pasta, lay the noodles out on the counter instead of boiling. It will take approximately 24 hours to dry at room temperature, and will snap cleanly without bending when it’s fully dry. Store in an airtight container, where it will keep for up to a month.")
                    .font(.system(size: 22, weight: .regular))

                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                
                
            }
        }
        .scrollIndicators(.hidden)
        .padding()
    }
}

struct Recipe4Detail_Previews: PreviewProvider {
    static var previews: some View {
        Recipe4Detail()
    }
}
