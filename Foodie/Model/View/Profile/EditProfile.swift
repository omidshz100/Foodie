//
//  EditProfile.swift
//  Foodie
//
//  Created by Giada Pisani on 26/01/23.
//

import SwiftUI
import CoreData

struct EditProfile: View {
    @State var name: String = ""
    @State var username: String = ""
    @State var email: String = ""
    @State var phone: String = ""
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(entity: ProfileDB.entity(),sortDescriptors: [NSSortDescriptor(keyPath: \ProfileDB.id, ascending: true)], animation: .default)
    private var items: FetchedResults<ProfileDB>
    
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
                savaTask()
            }
            .buttonStyle(.borderedProminent)
            Spacer()
                .frame(height: 80)

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    private func savaTask(){
        do{
            let newItem = ProfileDB(context: viewContext)
            newItem.name = name
            newItem.id = UUID()
            newItem.username = username
            newItem.email = email
            newItem.phone = phone
            newItem.userIMG = "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
            try viewContext.save()
        }
        catch{
            print(error.localizedDescription)
        }
    }
}

struct EditProfile_Previews: PreviewProvider {
    static var previews: some View {
        EditProfile()
    }
}
