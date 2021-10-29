//
//  RecipeDetail.swift
//  Pappsatt
//
//  Created by Fabian Braig on 28.10.21.
//

import SwiftUI

struct RecipeDetail: View {
	var recipe: Recipe
    var body: some View {
        ScrollView {
			SquareImage(image: recipe.image)
			Text(recipe.name)
				.font(.largeTitle)
				.foregroundColor(.orange)
			HStack {
				Text("Zutaten")
					.font(.title2)
				Spacer()
			}
			HStack {
				VStack(alignment: .leading) {
					ForEach(recipe.ingredients, id: \.self) {
						Text("\($0)")
					}
				}
				Spacer()
			}
			HStack {
				Text("Zubereitung")
					.font(.title2)
				Spacer()
			}
			.padding(.top)
			Text(recipe.instruction)
		}
		.padding(.leading)
		.padding(.trailing)
		.navigationBarTitleDisplayMode(.inline)
    }
}

struct RecipeDetail_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetail(recipe: recipes[0])
    }
}
