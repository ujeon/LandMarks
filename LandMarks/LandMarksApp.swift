//
//  LandMarksApp.swift
//  LandMarks
//
//  Created by 우전 on 10/22/23.
//

import SwiftUI

@main
struct LandMarksApp: App {
  @State private var modelData = ModelData()
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environment(ModelData())
    }
  }
}
