//
//  ContentView.swift
//  Foodie
//
//  Created by Omid Shojaeian Zanjani on 11/01/23.
// hooman

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView(){
           Ingredients()
                .tabItem{
                    Label("Pantry", systemImage: "cabinet")
                }
                .toolbarBackground(.visible, for: .tabBar)
            Community()
                .tabItem{
                    Label("Community", systemImage: "person.2")
                }
            Profile()
                .tabItem{
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


