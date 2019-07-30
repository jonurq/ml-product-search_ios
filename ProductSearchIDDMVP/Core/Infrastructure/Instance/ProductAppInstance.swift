//
//  ProductAppInstance.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 6/25/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Foundation

struct ProductAppInstance {
    
    static let baseUrl = "https://api.mercadolibre.com"
    
    private init() {}
    
    static func resolveSearchProducts() -> SearchProducts {
        return SearchProducts(repository: productRepository())
    }
    
    static func resolveGetProductDetail() -> GetProductDetail {
        return GetProductDetail(repository: productRepository())
    }
    
    static private func productRepository() -> ProductRepositoryProtocol {
        //TODO: Database
        return RealmCacheProductRepository(source: GenericHTTPProductRepository(service: AFProductService(baseUrl: baseUrl)), databaseSource: [])
    }
}
