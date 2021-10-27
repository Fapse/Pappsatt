//
//  Pappsatt.swift
//  Pappsatt
//
//  Created by Fabian Braig on 27.10.21.
//

import SwiftUI

struct Pappsatt: View {
    var body: some View {
		
		HStack {
			Image(systemName: "fork.knife.circle")
			.font(.system(size: 30.0))
		}
		.padding()
		.background(Color.orange)

    }
}

struct Pappsatt_Previews: PreviewProvider {
    static var previews: some View {
        Pappsatt()
    }
}
