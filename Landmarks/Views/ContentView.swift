//
//  ContentView.swift
//  Landmarks
//
//  Created by Lucas Migge de Barros on 09/10/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var modelData : ModelData
    @State private var selection : Tab = .featured
    
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .environmentObject(modelData)
                .tabItem {Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .environmentObject(modelData)
                .tabItem {Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
