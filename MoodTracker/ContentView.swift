//
//  ContentView.swift
//  MoodTracker
//
//  Created by Jason Wise on 1/26/23.
//

import SwiftUI

struct ContentView: View {
  
  @State private var selectedRating = 1
  
    var body: some View {
      List {
        Picker("Mood Rating", selection: $selectedRating ) {
          ForEach(1..<11) {
            Text("\($0)").tag($0)
          }
        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
