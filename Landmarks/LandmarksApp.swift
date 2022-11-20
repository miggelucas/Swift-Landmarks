//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Lucas Migge de Barros on 09/10/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @EnvironmentObject var modelData : ModelData
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
