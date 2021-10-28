//
//  RecipeDetail.swift
//  Pappsatt
//
//  Created by Fabian Braig on 28.10.21.
//

import SwiftUI

struct RecipeDetail: View {
    var body: some View {
        VStack {
		HStack {
			Image(systemName: "fork.knife.circle")
			.font(.system(size: 30.0))
		}
		.padding()
		.background(Color.orange)			
		}
    }
}

struct RecipeDetail_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetail()
    }
}
