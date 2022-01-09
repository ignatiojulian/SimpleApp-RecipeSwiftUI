//
//  RecipeSaverApp.swift
//  RecipeSaver
//
//  Created by Ignatio Julian on 09/01/22.
//

import SwiftUI

@main
struct RecipeSaverApp: App {
    @StateObject var recipeViewModel = RecipeViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipeViewModel)
        }
    }
}
