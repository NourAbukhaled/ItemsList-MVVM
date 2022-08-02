//
//  itemModel.swift
//  ItemsList
//
//  Created by Nour Abukhaled on 02/08/2022.
//

import Foundation

class ResultsModel: Codable {
    var results: [ItemModel]
}

class ItemModel: Codable {
    var createdAt: String
    var price: String
    var name: String
    var uid: String
    var imageIds: [String]
    var imageUrls: [String]
    var imageUrlsThumbnails: [String]

    var imageID: String? {
        return imageIds.first
    }

    var imageURL: URL? {
        if let imageUrl = imageUrls.first {
            return URL(string: imageUrl)
        }
        return nil
    }

    var imageThumbnail: URL? {
        if let imageThumb = imageUrlsThumbnails.first {
            return URL(string: imageThumb)
        }
        return nil
    }

    private enum CodingKeys: String, CodingKey {
        case createdAt = "created_at", price, name, uid,
             imageIds = "image_ids",
             imageUrls = "image_urls",
             imageUrlsThumbnails = "image_urls_thumbnails"
    }
}
