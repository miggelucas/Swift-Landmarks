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
        Text(landmark.name)
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[0])
    }
}
