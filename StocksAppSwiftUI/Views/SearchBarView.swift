//
//  SearchBarView.swift
//  StocksAppSwiftUI
//
//  Created by Developer on 29/07/2022.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var searchStock:String
    @State private var isEditing = false

    var body: some View {
        HStack {
            TextField("Search..", text: $searchStock)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal, 20)
                .onTapGesture {
                    self.isEditing = true
                }
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.searchStock = ""

                }) {
                    Text("Cancel")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.default, value:1)
            }
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(searchStock: .constant(""))
    }
}
