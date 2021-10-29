//
//  SquareImage.swift
//  Pappsatt
//
//  Created by Fabian Braig on 29.10.21.
//

import SwiftUI

struct SquareImage: View {
	var image: Image
    var body: some View {
        image
			.resizable()
			.scaledToFit()
			.clipShape(RoundedRectangle(cornerRadius: 50))
			.overlay(RoundedRectangle(cornerRadius: 50).stroke(Color.orange, lineWidth: 2))
			.shadow(radius: 5)
			.padding(.leading)
			.padding(.trailing)
    }
}

struct SquareImage_Previews: PreviewProvider {
    static var previews: some View {
        SquareImage(image: Image("kaesespatzen"))
    }
}
