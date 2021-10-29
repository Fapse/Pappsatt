//
//  SearchBar.swift
//  Pappsatt
//
//  This search bar code is slightly adapted from https://www.appcoda.com/swiftui-search-bar/
//  Thanks for posting!
//  Created by Fabian Braig on 29.10.21.
//
//

import SwiftUI
 
struct SearchBar: View {
    @Binding var text: String
 
    @State private var isEditing = false
 
    var body: some View {
        HStack {
 
            TextField("Search ...", text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                
				.overlay(
					HStack {
						Image(systemName: "magnifyingglass")
							.foregroundColor(.gray)
							.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
							.padding(.leading, 8)
				 
						if isEditing {
							Button(action: {
								self.text = ""
							}) {
								Image(systemName: "multiply.circle.fill")
									.foregroundColor(.gray)
									.padding(.trailing, 8)
							}
						}
					}
				)
                               
                .padding(.horizontal, 10)
                .onTapGesture {
                    self.isEditing = true
                }
 
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""

                    // Dismiss the keyboard
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                }) {
                    Text("Cancel")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
				//.animation(<#T##animation: Animation?##Animation?#>, value: <#T##Equatable#>)
			}
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
    }
}
