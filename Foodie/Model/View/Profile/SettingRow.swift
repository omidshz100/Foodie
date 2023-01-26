//
//  SettingRow.swift
//  Foodie
//
//  Created by Giada Pisani on 26/01/23.
//

import SwiftUI



struct SettingRow: View {
    
    
    
    
    
    var body: some View {
        VStack{
            Divider()
            HStack(spacing:20){
                Image(systemName: "bell.fill")
                Text("Notifications") .bold()
                Spacer()
                Button(action: {}) {
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.black)
                    
                    }
                }
            Divider()
            HStack(spacing:20){
                Image(systemName: "heart.fill")
                Text("Favourites") .bold()
                Spacer()
                Button(action: {}) {
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.black)
                    
                    }
                }
            Divider()
            HStack(spacing:20){
                Image(systemName: "gearshape.fill")
                Text("Settings") .bold()
                Spacer()
                Button(action: {}) {
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.black)
                    
                    }
                }
            Divider()
            HStack(spacing:20){
                Image(systemName: "lock.fill")
                Text("Privacy") .bold()
                Spacer()
                Button(action: {}) {
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.black)
                    
                    }
                }
            Divider()
        }
    }
    struct SettingRow_Previews: PreviewProvider {
        static var previews: some View {
            SettingRow()
        }
    }
}
