//
//  RecipesRow.swift
//  Foodie
//
//  Created by Laura Bognanni on 12/01/23.
//

import SwiftUI

struct RecipesRow: View {
    var imageName: String = "pic1"
    var recipeName: String = "Tortillas"
    
    var body: some View {
        Button(action: {
            print("text")
        }, label: {
            ZStack{
                Image(imageName)
                    .resizable()
                    .frame(width: 350, height: 200)
                    .cornerRadius(30)
                    .padding(10)
                
                Rectangle()
                    .frame(width: 350, height: 50)
                    .foregroundColor(.white)
                    .opacity(0.5)
                    .cornerRadius(30, corners: [.bottomLeft, .bottomRight])
                    .offset(x: 0, y: 75)
                
                Text(recipeName)
                    .font(.title)
                    .offset(x: 0, y: 80)
            }
        })
        .foregroundColor(.black)
        //.frame(width: 100, height: 100)
        
    }
}

struct RecipesRow_Previews: PreviewProvider {
    static var previews: some View {
        RecipesRow()
    }
}


extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner (radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
