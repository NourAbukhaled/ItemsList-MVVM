//
//  itemModel.swift
//  ItemsList
//
//  Created by Nour Abukhaled on 02/08/2022.
//

import Foundation

class ResultModel: Codable {
    var results: [ItemModel]
}

struct ItemModel: Codable, Hashable {
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

    var imageURL: String? {
        if let imageUrl = imageUrls.first {
            return imageUrl
        }
        return nil
    }

    var imageThumbnail: String? {
        if let imageThumb = imageUrlsThumbnails.first {
            return imageThumb
        }
        return nil
    }
    
    init(createdAt: String
         ,price: String
         ,name: String
         ,uid: String
         ,imageIds: [String]
         ,imageUrls: [String]
         ,imageUrlsThumbnails: [String]) {
        self.createdAt = createdAt
        self.price = price
        self.name = name
        self.uid = uid
        self.imageIds = imageIds
        self.imageUrls = imageUrls
        self.imageUrlsThumbnails = imageUrlsThumbnails
    }
    
    private enum CodingKeys: String, CodingKey {
        case createdAt = "created_at", price, name, uid,
             imageIds = "image_ids",
             imageUrls = "image_urls",
             imageUrlsThumbnails = "image_urls_thumbnails"
    }
    
    static var example: ItemModel {
        .init(createdAt: "ddugaigdai",
              price: "ajdbaidbia",
              name: "qhyoihioho",
              uid: "bjsabfkjbfkfk",
              imageIds: ["wihriwohrio"],
              imageUrls: ["ywuyryauur"],
              imageUrlsThumbnails: ["iuywqitqiutiei"])
    }
}
