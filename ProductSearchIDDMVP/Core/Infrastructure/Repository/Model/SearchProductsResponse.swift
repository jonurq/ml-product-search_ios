//
//  SearchProductsResponse.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 6/27/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Foundation


// MARK: - Response
struct SearchProductsResponse: Codable {
    let siteID: String
    let query: String?
    let paging: Paging
    let results: [ItemResponse]
    
    enum CodingKeys: String, CodingKey {
        case siteID = "site_id"
        case query, paging, results
    }
    
    
    func toModel() -> [ProductItem] {
        
        var products = [ProductItem]()
        results.forEach({ item in
            products.append(ProductItem(id: item.id))
        })
        
        return products
    }
}

// MARK: - Paging
struct Paging: Codable {
    let total, offset, limit, primaryResults: Int
    
    enum CodingKeys: String, CodingKey {
        case total, offset, limit
        case primaryResults = "primary_results"
    }
}

// MARK: - Result
struct ItemResponse: Codable {
    let id, siteID, title: String
    let seller: Seller
    let price: Double
    let currencyID: String
    let availableQuantity, soldQuantity: Int
    let buyingMode, listingTypeID, stopTime, condition: String
    let permalink: String
    let thumbnail: String
    let acceptsMercadopago: Bool
    let installments: Installments
    let address: Address
    let shipping: Shipping
    let sellerAddress: SellerAddress
    let originalPrice: Double?
    let categoryID: String
    let tags: [String]
    
    enum CodingKeys: String, CodingKey {
        case id
        case siteID = "site_id"
        case title, seller, price
        case currencyID = "currency_id"
        case availableQuantity = "available_quantity"
        case soldQuantity = "sold_quantity"
        case buyingMode = "buying_mode"
        case listingTypeID = "listing_type_id"
        case stopTime = "stop_time"
        case condition, permalink, thumbnail
        case acceptsMercadopago = "accepts_mercadopago"
        case installments, address, shipping
        case sellerAddress = "seller_address"
        case originalPrice = "original_price"
        case categoryID = "category_id"
        case tags
    }
}

// MARK: - Address
struct Address: Codable {
    let stateID, stateName, cityID, cityName: String?
    
    enum CodingKeys: String, CodingKey {
        case stateID = "state_id"
        case stateName = "state_name"
        case cityID = "city_id"
        case cityName = "city_name"
    }
}

// MARK: - Installments
struct Installments: Codable {
    let quantity: Int
    let amount, rate: Double
    let currencyID: String
    
    enum CodingKeys: String, CodingKey {
        case quantity, amount, rate
        case currencyID = "currency_id"
    }
}

// MARK: - Seller
struct Seller: Codable {
    let id: Int
    let powerSellerStatus: String?
    let carDealer, realEstateAgency: Bool
    let tags: [String]
    
    enum CodingKeys: String, CodingKey {
        case id
        case powerSellerStatus = "power_seller_status"
        case carDealer = "car_dealer"
        case realEstateAgency = "real_estate_agency"
        case tags
    }
}

// MARK: - SellerAddress
struct SellerAddress: Codable {
    let id, comment, addressLine, zipCode: String
    let country, state, city: City
    let latitude, longitude: String
    
    enum CodingKeys: String, CodingKey {
        case id, comment
        case addressLine = "address_line"
        case zipCode = "zip_code"
        case country, state, city, latitude, longitude
    }
}

// MARK: - City
struct City: Codable {
    let id, name: String?
}

// MARK: - Shipping
struct Shipping: Codable {
    let freeShipping: Bool
    let mode: String
    let tags: [String]
    let logisticType: String
    let storePickUp: Bool
    
    enum CodingKeys: String, CodingKey {
        case freeShipping = "free_shipping"
        case mode, tags
        case logisticType = "logistic_type"
        case storePickUp = "store_pick_up"
    }
}
