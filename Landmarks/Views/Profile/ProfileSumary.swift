//
//  ProfileSumary.swift
//  Landmarks
//
//  Created by Lucas Migge de Barros on 20/11/22.
//

import SwiftUI

struct ProfileSumary: View {
    @EnvironmentObject var modelData: ModelData
    var profile : Profile
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text((profile.username))
                    .fontWeight(.bold)
                    .font(.title)
                
                Text("Notifications: \(profile.prefersNotifications ? "On": "Off" )")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Completed Badges")
                        .font(.headline)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            HikeBadge(name: "First Hike")
                            HikeBadge(name: "Earth Day")
                                .hueRotation(Angle(degrees: 90))
                            HikeBadge(name: "Tenth Hike")
                                .grayscale(0.5)
                                .hueRotation(Angle(degrees: 45))
                            
                        }
                    }
                }
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Recent hikes")
                        .font(.headline)
                    
                    HikeView(hike: modelData.hikes[0])
                    
                }
                
            }
        }
        
    }
}

struct ProfileSumary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSumary(profile: Profile.default)
            .environmentObject(ModelData())
    }
}
