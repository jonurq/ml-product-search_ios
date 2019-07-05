//
//  SearchProductRepository.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 6/25/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Foundation

protocol ProductRepositoryProtocol{
    func searchProduct(q: Query) throws -> [ProductItem]
    func getProductDetail(id: String) throws -> ProductDetail
}

struct Query {
    let q: String
    let limit: Int
    let offset: Int
    
    func toParams() -> [String: Any] {
        return ["q": q, "limit": limit, "offset": offset]
    }
}
