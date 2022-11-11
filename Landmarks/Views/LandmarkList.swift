//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Lucas Migge de Barros on 09/11/22.
//

import SwiftUI

struct LandmarkList: View {
    
    @State var showFavoritesOnly = false
    @EnvironmentObject var modelData : ModelData
    
    var filteredLandmaks : [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
        
    var body: some View {
        NavigationView {
            List {
                Toggle("Favorites only", isOn: $showFavoritesOnly)
                
                ForEach(filteredLandmaks) {landmark in
                    NavigationLink(
                        destination: {LandmarkDetails(landmark: landmark)},
                        label: {LandmarkRow(landmark: landmark)})
                    
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
