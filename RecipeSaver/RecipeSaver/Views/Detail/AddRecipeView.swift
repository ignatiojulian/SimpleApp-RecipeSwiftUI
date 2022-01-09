//
//  AddRecipeView.swift
//  RecipeSaver
//
//  Created by Ignatio Julian on 09/01/22.
//

import SwiftUI

struct AddRecipeView: View {
    @EnvironmentObject var recipesViewModel: RecipeViewModel
    
    @State private var name: String = ""
    @State private var selectedCategory: Category = Category.main
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""
    @State private var navigateToRecipe: Bool = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name")) {
                    TextField("Recipe Name", text: $name)
                }
                
                Section(header: Text("Category")) {
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                }
                
                Section(header: Text("Description")) {
                    TextField("Recipe Name", text: $description)
                }
                
                Section(header: Text("Ingredients")) {
                    TextField("Recipe Name", text: $ingredients)
                }
                
                Section(header: Text("Directions")) {
                    TextField("Recipe Name", text: $directions)
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink(isActive: $navigateToRecipe) {
                        RecipeView(recipe: recipesViewModel.recipes.sorted { $0.datePublished > $1.datePublished }[0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button {
                            saveRecipe()
                            navigateToRecipe = true
                        } label: {
                            Label("Done", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                    }
                    .disabled(name.isEmpty)
                }
            })
            
            .navigationTitle("Add Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
            .environmentObject(RecipeViewModel())
    }
}

extension AddRecipeView {
    private func saveRecipe() {
        let now = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        let datePublished = dateFormatter.string(from: now)
        print(datePublished)
        
        let recipe = Recipe(
            name: name,
            image: "",
            description: description,
            ingredients: ingredients,
            directions: directions,
            category: selectedCategory.rawValue,
            datePublished: datePublished,
            url: ""
        )
        
        recipesViewModel.addRecipe(recipe: recipe)
    }
}
