//
//  FoodieApp.swift
//  Foodie
//
//  Created by Omid Shojaeian Zanjani on 11/01/23.
//

import SwiftUI

@main
struct FoodieApp: App {
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
