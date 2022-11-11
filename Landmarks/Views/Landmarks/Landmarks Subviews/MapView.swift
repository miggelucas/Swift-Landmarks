//
//  MapView.swift
//  Landmarks
//
//  Created by Lucas Migge de Barros on 07/11/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    let coordinate : CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion()
    
    private func setRegion(forCoordinate coordinate : CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            )
    }
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear{
                setRegion(forCoordinate: coordinate)
            }
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
