//
//  BookListViewModel.swift
//  My Books
//
//  Created by Jonas Niyazson on 2025-04-22.
//

import Foundation

class BookListViewModel: ObservableObject {
    @Published var bookTips: [Book] = []
  // @Published gör att SwiftUI uppdaterar vyn automatiskt om listan ändras.
    
    init() {
        loadDummyData() //  fyller listan med några exempel.
    }
    
    func loadDummyData() {
        bookTips = [
            Book(title: "Sagan om Ringen", author: "J.R.R. Tolkien", comment: "Episk fantasy!"),
            Book(title: "1984", author: "George Orwell", comment: "Tänkvärd dystopi."),
            Book(title: "Bröderna Lejonhjärta", author: "Astrid Lindgren", comment: "Barndomsklassiker.")
        ]
    }
}
