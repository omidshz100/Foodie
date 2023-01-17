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
            Favourites()
                .tabItem{
                    Label("Favourites", systemImage: "heart")
                }
            GroceryList()
                .tabItem{
                    Label("Grocery List", systemImage: "cart")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


