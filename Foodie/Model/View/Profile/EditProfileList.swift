//
//  EditProfileList.swift
//  Foodie
//
//  Created by Giada Pisani on 26/01/23.
//

import SwiftUI

struct EditProfileList: View {
    @State var name: String = ""
    @State var username: String = ""
    @State var email: String = ""
    @State var phone: String = ""

    var body: some View {
        VStack{
            HStack{
                Text("Name")
                    .font(.system(size: 20))
                        .fontWeight(.bold)
                TextField("  ", text: $name)
                    .font(.system(size:22, weight:.medium))
            }
            
            HStack{
                Text("Username")
                    .font(.system(size: 20))
                        .fontWeight(.bold)
                TextField("  ", text: $username)
                    .font(.system(size:22, weight:.medium))
            }
            
            HStack{
                Text("Email")
                    .font(.system(size: 20))
                        .fontWeight(.bold)
                TextField("  ", text: $email)
                    .font(.system(size:22, weight:.medium))
            }
            
            HStack{
                Text("Phone")
                    .font(.system(size: 20))
                        .fontWeight(.bold)
                TextField("  ", text: $phone)
                    .font(.system(size:22, weight:.medium))
            }
         
        }
    }
}

struct EditProfileList_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileList()
    }
}
