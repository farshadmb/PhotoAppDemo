//
//  AlbumItem.swift
//  PhotoAppDemo
//
//  Created by Farshad Mousalou on 7/16/21.
//  Copyright © 2021 iFarshad. All rights reserved.
//

import Foundation

struct AlbumItem: Codable, Hashable {

    let id: String?
    let userId: String?
    let mediaType: MediaType?
    let filename: String?
    let size: UInt64?
    let createdAt: Date?
    let takenAt: Data?
    let guessedTakenAt: Date?
    let md5Sum: String?
    let contentType: ContentType?
    let video: URL?
    let thumbnailUrl: URL?
    let downloadUrl: URL?
    let resx: UInt64?
    let resy: UInt64?

    enum CodingKeys: String, CodingKey {
        case id
        case userId
        case mediaType
        case filename
        case size
        case createdAt
        case takenAt
        case guessedTakenAt
        case md5Sum
        case contentType
        case video
        case thumbnailUrl
        case downloadUrl
        case resx
        case resy
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(contentType)
        hasher.combine(mediaType)
    }
}

enum ContentType: String, Codable, Hashable {
    case imageJpeg = "image/jpeg"
    case imagePNG = "image/PNG"
    case videoMP4 = "video/MP4"
}

enum MediaType: String, Codable, Hashable {
    case image
    case video
}

typealias Album = [AlbumItem]
