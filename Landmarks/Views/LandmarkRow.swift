//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Lucas Migge de Barros on 08/11/22.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark : Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .cornerRadius(5)
                .frame(width: 50, height: 50)
            
            
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
            }
        }
        
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        LandmarkRow(landmark: landmarks[0])
            .previewLayout(.fixed(width: 300, height: 70))
        // preview layout not working after xcode 14
    }
}
