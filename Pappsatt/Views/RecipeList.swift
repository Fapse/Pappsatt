//
//  RecipeList.swift
//  Pappsatt
//
//  Created by Fabian Braig on 28.10.21.
//

import SwiftUI

struct RecipeList: View {
    var body: some View {
		NavigationView {
			List(recipes) { recipe in
				NavigationLink(destination: RecipeDetail()) {
					RecipeRow(recipe: recipe)
				}
			}
			.navigationTitle("Rezepte")
		}
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        RecipeList()
    }
}
