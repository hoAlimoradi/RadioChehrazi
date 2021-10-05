//
//  Video.swift
//  RadioChehrazi
//
//  Created by Hosein Alimoradi on 7/11/1400 AP.
//
import Foundation

struct Video: Codable, Identifiable {
    let id, name, headline: String
    var thumbnail: String {
       // "video-\(id)"
        "radio_0"
    }
}
