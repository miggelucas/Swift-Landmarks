//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Lucas Migge de Barros on 11/11/22.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet : Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Favorite Toggle",
                  systemImage: isSet ? "heart.fill" : "heart")
            .labelStyle(.iconOnly)
            .foregroundColor(isSet ? .red : .gray)
            
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
