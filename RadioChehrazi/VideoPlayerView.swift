//
//  VideoPlayerView.swift
//  RadioChehrazi
//
//  Created by Hosein Alimoradi on 7/11/1400 AP.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK: - PROPERTIES
    var video: Video
    //var videoTitle: String
    //var player = playVideo(fileName: "", fileFormat: "mp3")
    
    
    
    
    // MARK: - BODY
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: video.id, fileFormat: "mp3")) {
                 
                
            } 
            .overlay(
                Text(video.headline)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                , alignment: .topLeading
            )
        } //: VSTACK
        .accentColor(.accentColor)
        .navigationBarTitle(video.name, displayMode: .inline)
        
    }
}

 //MARK: - PREVIEW
struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(video: Video(id: "111", name: "name", headline: "String"))
        }
    }
}
