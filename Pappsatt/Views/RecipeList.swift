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
				NavigationLink(destination: RecipeDetail(recipe: recipe)) {
					RecipeRow(recipe: recipe)
				}
			}
			.navigationTitle("Rezepte")
			.navigationBarTitleDisplayMode(.large)
		}
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        RecipeList()
    }
}
