//
//  RecipeViewModel.swift
//  RecipeSaver
//
//  Created by Ignatio Julian on 09/01/22.
//

import Foundation

class RecipeViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
