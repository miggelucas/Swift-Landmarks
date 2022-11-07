//
//  Landmark.swift
//  Landmarks
//
//  Created by Lucas Migge de Barros on 07/11/22.
//

import Foundation
import SwiftUI
import MapKit

struct Landmark : Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image : Image {
        Image(imageName)
    }
    // ˆˆˆˆlook up for for more closure tips like this
    
    private var coordinate : Coordinates
    var locationCoordinate : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinate.latitude,
                               longitude: coordinate.longitude)
    }
    
    
    
    struct Coordinates : Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    
    
}
