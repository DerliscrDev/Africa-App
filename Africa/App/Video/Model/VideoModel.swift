//
//  VideoModel.swift
//  Africa
//
//  Created by Derlis Ramón Cañete Ríos on 2023-01-26.
//

import SwiftUI

struct VideoModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
