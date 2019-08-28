//
//  ProductDetailResponse.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 6/27/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Foundation

struct ProductDetailResponse: Codable {
    let id, siteID, title: String
    let price: Double
    let currencyID: String
    let availableQuantity, soldQuantity: Int
    let buyingMode, listingTypeID, stopTime, condition: String
    let permalink: String
    let acceptsMercadopago: Bool?
    let originalPrice: Double?
    let categoryID: String?
    let tags: [String]?
    let pictures: Pictures
    
    enum CodingKeys: String, CodingKey {
        case id
        case siteID = "site_id"
        case title, price
        case currencyID = "currency_id"
        case availableQuantity = "available_quantity"
        case soldQuantity = "sold_quantity"
        case buyingMode = "buying_mode"
        case listingTypeID = "listing_type_id"
        case stopTime = "stop_time"
        case condition, permalink
        case acceptsMercadopago = "accepts_mercadopago"
        case originalPrice = "original_price"
        case categoryID = "category_id"
        case tags
        case pictures
    }
    
    
    func toModel() -> ProductDetail {
        return ProductDetail(id: id)
    }
}

struct Picture: Codable {
    let id: String
    let url: String
    let secureURL: String
    let size, maxSize, quality: String
    
    enum CodingKeys: String, CodingKey {
        case id, url
        case secureURL = "secure_url"
        case size
        case maxSize = "max_size"
        case quality
    }
}

typealias Pictures = [Picture]
