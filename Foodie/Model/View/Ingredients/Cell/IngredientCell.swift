//
//  IngredientCell.swift
//  Foodie
//
//  Created by Omid Shojaeian Zanjani on 18/01/23.
//

import SwiftUI

struct IngredientCell: View {
    var data:[String] = ["a", "bjhgjh","a", "b","a", "b","a", "b","a", "b" ]
    
    var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .top){
                Image(systemName: "apple.logo")
                    .font(.system(size: 30))
                Text("Category Title")
                    .font(.system(size: 30))
                Spacer()
            }.padding()
            
            ScrollView(.horizontal){
                        LazyHGrid(rows: [GridItem(.flexible()),
                                            GridItem(.flexible()),
                                            GridItem(.flexible())], spacing: 5) {
                            ForEach(0..<Int(data.count), id: \.self){ item in
                                BtnTogglable(actionOnTap:  { isSelected, btnTitle in
                                    if isSelected {
                                        print(btnTitle)
                                        
                                        IngredientSelected.selectedIngredient.append(btnTitle)
                                    }
                                }, btnTitle: data[item])
                                .frame(width: 200, height: 80)
                                }
                        }
                    } .frame(maxWidth: .infinity, maxHeight: .infinity)

                        .padding()
            
            Divider()
        }
        
    }
}

struct IngredientCell_Previews: PreviewProvider {
    static var previews: some View {
        IngredientCell()
    }
}
