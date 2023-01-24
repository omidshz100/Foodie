//
// Profile.swift
//  Foodie
//
//  Created by Laura Bognanni on 12/01/23.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack{
            HStack(spacing: 30){
                Image("NewPostProfile")
                    .resizable()
                    .frame(width: 100, height: 130)
                VStack{
                    Text("MrBroccoli")
                    Text("broccoli23")
                }
                Spacer()
            }
            .padding(30)
            
            List {
                VStack{
                    Text("Notifications")
                    //Spacer()
                    Text("Notifications")
                }
                VStack{
                    Text("Favourites")
                    Text("Favourites")
                }
                VStack{
                    Text("Settings")
                    Text("Settings")
                }
                VStack{
                    Text("Privacy")
                    Text("Privacy")
                }
                VStack{
                    Text("Screen Time")
                    Text("Screen Time")
                }
            }
            .listStyle(.plain)
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
