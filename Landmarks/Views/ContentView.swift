//
//  ContentView.swift
//  Landmarks
//
//  Created by Lucas Migge de Barros on 09/10/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var modelData : ModelData
    
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
