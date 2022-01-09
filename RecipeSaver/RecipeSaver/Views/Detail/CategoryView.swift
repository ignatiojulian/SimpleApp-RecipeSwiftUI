//
//  CategoryView.swift
//  RecipeSaver
//
//  Created by Ignatio Julian on 09/01/22.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var recipesViewModel: RecipeViewModel
    
    var category: Category
    
    // Computed Properties
    var recipes: [Recipe] {
        return recipesViewModel.recipes.filter { $0.category == category.rawValue }
    }
    
    var body: some View {
        ScrollView {
            RecipeList(recipes: recipes)
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.soup)
    }
}
