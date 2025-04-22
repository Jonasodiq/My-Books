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
