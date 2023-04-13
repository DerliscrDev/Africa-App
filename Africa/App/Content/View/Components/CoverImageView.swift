//
//  CoverImageView.swift
//  Africa
//
//  Created by Derlis Ramón Cañete Ríos on 2023-01-26.
//

import SwiftUI

struct CoverImageView: View {
    
    let coverImages: [CoverImageModel] = Bundle.main.decode("covers.json")
    
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
