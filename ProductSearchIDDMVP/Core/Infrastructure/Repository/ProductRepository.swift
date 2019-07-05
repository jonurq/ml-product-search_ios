//
//  ProductRepository.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 6/25/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Foundation

class ProductRepository {
    
    private let service: ProductServiceProtocol
    
    required init(service: ProductServiceProtocol) {
        self.service = service
    }
}

extension ProductRepository: ProductRepositoryProtocol {
    func searchProduct(q: Query) throws -> [ProductItem] {
        
        let (data, error) = service.get(path: "/sites/MLA/search", params: q.toParams())
        
        if let error = error {
            throw ApiError.error(error)
        }
        
        let parsedData = try CodableUtils.decode(data, model: SearchProductsResponse.self)
        
        return parsedData.toModel()
    }
    
    func getProductDetail(id: String) throws -> ProductDetail {
        let (data, error) = service.get(path: "/items/\(id)", params: nil)
        
        if let error = error {
            throw ApiError.error(error)
        }
        
        let parsedData = try CodableUtils.decode(data, model: ProductDetailResponse.self)
        
        return parsedData.toModel()
    }
}
