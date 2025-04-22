//
//  BookListView.swift
//  My Books
//
//  Created by Jonas Niyazson on 2025-04-22.
//

import SwiftUI

struct BookListView: View {
    @StateObject private var viewModel = BookListViewModel() // används för att initiera ViewModel i vyn.
    
    var body: some View {
        NavigationView {
            List(viewModel.bookTips) { tip in // visar varje BookTip i en lista.
                VStack(alignment: .leading) {
                    Text(tip.title)
                        .font(.headline)
                    Text("Av \(tip.author)")
                        .font(.subheadline)
                    if !tip.comment.isEmpty {
                        Text("Kommentar: \(tip.comment)")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                }
                .padding(.vertical, 4)
            }
            .navigationTitle("Mina Boktips")
        }
    }
}

#Preview {
  BookListView()
}

