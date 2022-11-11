//
//  DetailsView.swift
//  Landmarks
//
//  Created by Lucas Migge de Barros on 09/11/22.
//

import SwiftUI

struct LandmarkDetails: View {
    @EnvironmentObject var modelData : ModelData
    let landmark : Landmark
    
    var landmarkIndex : Int {
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    
    var body: some View {
        ScrollView{
            VStack {
                MapView(coordinate: landmark.locationCoordinate)
                    .ignoresSafeArea()
                    .frame(height: 300)
                
                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text(landmark.name)
                            .font(.title)
                        FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                    }
                    
                    HStack {
                        Text(landmark.park)
                        
                        Spacer()
                        
                        Text(landmark.state)
                        
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()
                    
                    Text("About \(landmark.name)") 
                        .font(.title2)
                    Text(landmark.description)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                }
                .padding()
                
                Spacer()
                
            }
        }.ignoresSafeArea()
        
    }
}

struct DetailsView_Previews: PreviewProvider {
    
    static var modelData = ModelData()
    
    static var previews: some View {
        LandmarkDetails(landmark: modelData.landmarks[0])
            .environmentObject(modelData)
    }
       
}
