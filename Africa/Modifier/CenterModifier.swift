//
//  CenterModifier.swift
//  Africa
//
//  Created by Derlis Ramón Cañete Ríos on 2023-01-28.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
