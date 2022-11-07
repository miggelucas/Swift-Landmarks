//
//  CircleImage.swift
//  Landmarks
//
//  Created by Lucas Migge de Barros on 01/11/22.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("multicolorido")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
        
            
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
