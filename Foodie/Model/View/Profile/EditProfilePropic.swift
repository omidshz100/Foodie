//
//  EditProfilePropic.swift
//  Foodie
//
//  Created by Giada Pisani on 26/01/23.
//

import SwiftUI

struct EditProfilePropic: View {
    var body: some View {
        VStack{
            Image("NewPostProfile")
                .resizable()
                .frame(width: 210, height: 220)
                .cornerRadius(20)
                .shadow(radius: 0.5)
                .padding()
            Button("Edit your profile picture") {
                // some action here
            }
            .bold()

        }
    }
}

struct EditProfilePropic_Previews: PreviewProvider {
    static var previews: some View {
        EditProfilePropic()
    }
}
