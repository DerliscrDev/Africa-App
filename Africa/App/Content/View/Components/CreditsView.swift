//
//  CreditsView.swift
//  Africa
//
//  Created by Derlis Ramón Cañete Ríos on 2023-01-28.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
Copyright © Derlis Cañete
All right reserved
Better Apps ♤ Less Code
""")
        .font(.footnote)
    .multilineTextAlignment(.center)
        }
        .padding()
        .opacity(0.4)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
