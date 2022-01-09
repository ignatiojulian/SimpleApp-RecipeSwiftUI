//
//  FavoriteView.swift
//  RecipeSaver
//
//  Created by Ignatio Julian on 09/01/22.
//

import SwiftUI

struct FavoriteView: View {
    var body: some View {
        NavigationView {
            Text("My Recipes")
                .navigationTitle("Favorite")
        }
        .navigationViewStyle(.stack)
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
