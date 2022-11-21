//
//  Profile.swift
//  Landmarks
//
//  Created by Lucas Migge de Barros on 20/11/22.
//

import Foundation

struct Profile {
    
    var username : String
    var prefersNotifications : Bool = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "Jeremias Default")
    
    enum Season : String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id : String { rawValue }
    }
    
}
