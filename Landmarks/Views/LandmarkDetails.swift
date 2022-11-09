//
//  DetailsView.swift
//  Landmarks
//
//  Created by Lucas Migge de Barros on 09/11/22.
//

import SwiftUI

struct LandmarkDetails: View {
    
    let landmark : Landmark
    
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
                    Text(landmark.name)
                        .font(.title)
                    
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
    static var previews: some View {
        LandmarkDetails(landmark: Service.landmarks[1])
        
    }
       
}
