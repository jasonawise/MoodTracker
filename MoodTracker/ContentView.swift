//
//  ContentView.swift
//  MoodTracker
//
//  Created by Jason Wise on 1/26/23.
//

import SwiftUI

struct ContentView: View {
  
  @ObservedObject var trackingModel = TrackingModel()
  
    var body: some View {
      VStack {
        List {
          Picker("Mood Rating", selection: $trackingModel.selectedRating ) {
            ForEach(1..<11) {
              Text("\($0)").tag($0)
            }
          }
          
          DatePicker(selection: $trackingModel.trackingDate, displayedComponents: [.date], label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
