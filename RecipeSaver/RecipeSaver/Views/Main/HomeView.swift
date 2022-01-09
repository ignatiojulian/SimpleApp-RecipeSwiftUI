//
//  HomeView.swift
//  RecipeSaver
//
//  Created by Ignatio Julian on 09/01/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipesViewModel: RecipeViewModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                RecipeList(recipes: recipesViewModel.recipes)
            }
            .navigationTitle("My Recipe")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipeViewModel())
    }
}
