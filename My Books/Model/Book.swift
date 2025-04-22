//
//  Book.swift
//  My Books
//
//  Created by Jonas Niyazson on 2025-04-22.
//

import Foundation

struct Book: Identifiable {
    let id = UUID()
    let title: String
    let author: String
    let comment: String
}
