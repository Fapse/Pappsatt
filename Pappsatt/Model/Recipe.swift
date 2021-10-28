//
//  Recipe.swift
//  Pappsatt
//
//  Created by Fabian Braig on 28.10.21.
//

import Foundation
import SwiftUI

struct Recipe: Hashable, Codable, Identifiable {
	var id: Int
	var name: String
	var ingredients: [String]
	var instruction: String
	
	private var imageName: String
	var image: Image {
		Image(imageName)
	}
}
