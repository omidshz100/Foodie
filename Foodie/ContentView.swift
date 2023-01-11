//
//  ContentView.swift
//  Foodie
//
//  Created by Omid Shojaeian Zanjani on 11/01/23.
//
//Hoomanm2

import SwiftUI
// First change
struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
