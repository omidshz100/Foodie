//
//  NewPost.swift
//  Foodie
//
//  Created by Giada Pisani on 18/01/23.
//

import SwiftUI

struct NewPost: View {
    @State private var caption : String = " "
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text("New Post")
                .font(.system(size: 40, weight: .semibold))
                
            
        Button(action: {}) {
                ZStack{
                    Rectangle()
                        .frame(width: 350, height:325)
                        .cornerRadius(20)
                        .foregroundColor(Color("buttonColor"))
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.white)
                }
            }
            
            TextField("Write your caption here", text: $caption)
                .padding()
                .font(.system(size:20, weight:.medium))
                .frame(width: 350, height: 82)
                .background(Color("buttonColor"))
                .cornerRadius(14)
            
            Button {
                
            } label: {
                Text("Add Post")
                    .font(.system(size: 32, weight: .semibold))
            }
            .buttonStyle(.borderedProminent)
            .offset(x: 86)
          
            
        }
    }
}
struct NewPost_Previews: PreviewProvider {
    static var previews: some View {
        NewPost()
    }
}
