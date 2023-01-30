//
//  Profile.swift
//  Foodie
//
//  Created by Giada Pisani on 30/01/23.
//

import SwiftUI
import CoreData

struct Profile: View {
    var body: some View {
       NavigationStack {
            VStack(spacing:20){
                ProfileRow()
                SettingRow()
            } .padding()
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
