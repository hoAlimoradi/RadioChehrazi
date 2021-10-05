//
//  VideoPlayerHelper.swift
//  RadioChehrazi
//
//  Created by Hosein Alimoradi on 7/11/1400 AP.
//
import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFormat: String) -> AVPlayer {
    if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileFormat)!)
        videoPlayer?.play()
    }
    return videoPlayer ?? AVPlayer()
}
