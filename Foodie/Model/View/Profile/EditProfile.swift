//
//  EditProfile.swift
//  Foodie
//
//  Created by Giada Pisani on 26/01/23.
//

import SwiftUI

struct EditProfile: View {
    @State var name: String = ""
    @State var username: String = ""
    @State var email: String = ""
    @State var phone: String = ""
    
    
    var body: some View {
        VStack{
            EditProfilePropic()
            Divider()
            List{
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
           .listStyle(.plain)
            
            
            Button("Done") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .buttonStyle(.borderedProminent)
            Spacer()
                .frame(height: 80)

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct EditProfile_Previews: PreviewProvider {
    static var previews: some View {
        EditProfile()
    }
}
