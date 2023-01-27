//
//  TrackingModel.swift
//  MoodTracker
//
//  Created by Jason Wise on 1/26/23.
//

import Foundation

class TrackingModel: ObservableObject {
  @Published var selectedRating: Int = 1
  @Published var trackingDate: Date = Date()
}
