//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Lucas Migge de Barros on 09/11/22.
//

import SwiftUI

struct LandmarkList: View {
    
    @State var showFavoritesOnly = false
    
    var body: some View {
        NavigationView {
            if showFavoritesOnly {
                List(Service.landmarks) { landmark in
                    NavigationLink(
                        destination: {LandmarkDetails(landmark: landmark)},
                        label: {LandmarkRow(landmark: landmark)})
                    
                }
                .navigationTitle("Landmarks")
            } else {
                List(Service.landmarks) { landmark in
                    if landmark.isFavorite {
                        NavigationLink(
                            destination: {LandmarkDetails(landmark: landmark)},
                            label: {LandmarkRow(landmark: landmark)})
                    }
                }
                .navigationTitle("Landmarks")

            }
        }
    }
}


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
