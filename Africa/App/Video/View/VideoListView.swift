//
//  VideoListView.swift
//  Africa
//
//  Created by Derlis Ramón Cañete Ríos on 2023-01-26.
//

import SwiftUI

struct VideoListView: View {
    
    @State private var videos: [VideoModel] = Bundle.main.decode("videos.json")
    
    let hapticImpat = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name), label: {
                        VideoListItemView(video: item)
                            .padding(.vertical, 8)
                    })
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Videos")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        videos.shuffle()
                        hapticImpat.impactOccurred()
                    }) {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        }
    }
}

struct VideoListView_Previews: PreviewProvider {
    
    static var previews: some View {
        VideoListView()
    }
}
