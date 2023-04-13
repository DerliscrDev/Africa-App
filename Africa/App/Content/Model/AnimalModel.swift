//
//  AnimalModel.swift
//  Africa
//
//  Created by Derlis Ramón Cañete Ríos on 2023-01-26.
//

import SwiftUI

struct AnimalModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
