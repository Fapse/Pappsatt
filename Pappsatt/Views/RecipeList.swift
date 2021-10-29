//
//  RecipeList.swift
//  Pappsatt
//
//  Created by Fabian Braig on 28.10.21.
//

import SwiftUI

struct RecipeList: View {
	@State private var searchText = ""

	var filteredRecipes: [Recipe] {
		recipes.filter { recipe in
			( searchText.isEmpty ||
				recipe.name.lowercased().contains(searchText.lowercased()) ||
				recipe.ingredients.joined().lowercased().contains(searchText.lowercased()) ||
				recipe.instruction.lowercased().contains(searchText.lowercased()))
		}
	}

    var body: some View {
		NavigationView {
		List {
			SearchBar(text: $searchText)
			ForEach(filteredRecipes) { recipe in
				NavigationLink(destination: RecipeDetail(recipe: recipe)) {
					RecipeRow(recipe: recipe)
				}
			}
			.navigationTitle("Rezepte")
			.navigationBarHidden(true)
			}
		}
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        RecipeList()
    }
}
