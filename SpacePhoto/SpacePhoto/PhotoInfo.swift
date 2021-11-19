//
//  PhotoInfo.swift
//  SpacePhoto
//
//  Created by Reece Olsen on 11/15/21.
//

import Foundation
struct PhotoInfo: Codable {
    var title: String
    var description: String
    var url: URL
    var copyright: String?
    enum CodingKeys: String, CodingKey {
        case title
        case description = "explanation"
        case url
        case copyright
    }
}
