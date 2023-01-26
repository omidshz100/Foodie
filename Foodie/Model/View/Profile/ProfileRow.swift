//
//  ProfileRow.swift
//  Foodie
//
//  Created by Giada Pisani on 26/01/23.
//

import SwiftUI

struct ProfileRow: View {
    var body: some View {
        HStack(spacing: 30){
            Image("NewPostProfile")
                .resizable()
                .frame(width: 110, height: 120)
                .cornerRadius(20)
                .shadow(radius: 0.5)
            VStack{
                Text("MrBroccoli")
                    .bold().font(.system(size: 20))
                    .padding()
                Text("broccoli23")
                    .font(.system(size: 18))
                        .fontWeight(.regular)
            }
            Button(action: {}) {
                
                Image(systemName: "chevron.right")
                    .font(.system(size:30))
                    .foregroundColor(.black)
                
                }
            Spacer()
        }
    }
    
    struct ProfileRow_Previews: PreviewProvider {
        static var previews: some View {
            ProfileRow()
        }
    }
}
