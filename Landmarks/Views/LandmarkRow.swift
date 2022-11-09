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
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
        }
        
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    let landmarks = Service.landmarks
    
    static var previews: some View {
        Group {
            LandmarkRow(landmark: Service.landmarks[0])
            LandmarkRow(landmark: Service.landmarks[1])
            
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
