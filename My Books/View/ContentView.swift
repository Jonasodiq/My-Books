//
//  ContentView.swift
//  My Books
//
//  Created by Jonas Niyazson on 2025-04-22.
//

import SwiftUI
import Firebase

struct ContentView: View {
  // MARK: - PROPERTIES
  let db = Firestore.firestore()
  
  // MARK: - BODY
  var body: some View {
    VStack {
      
      Text("Bismillah")
    }
    .onAppear() {
      db.collection("Test").addDocument (data: ["name": "Jonas"])
    }
  }
}

#Preview {
    ContentView()
}

/**
 1. Nytt repo och koppla med github
 2. Ladda ned SKD (Auth, FirebaseFirestore)
 3. Skapa Firebase project och koppla ihåp
 4. Testkör appen för att den är koplat
 5. Model (MVVM) ->
    Map "Model"  -> "Book"
    Map "ViewModel "  -> "BookListViewModel"
    Map "View "  -> "BookListView"
 
 */
