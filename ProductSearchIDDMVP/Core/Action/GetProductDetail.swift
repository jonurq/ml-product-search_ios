//
//  GetProductDetail.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 6/25/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Foundation

class GetProductDetail {
    private let productRepository: ProductRepositoryProtocol
    
    required init(repository: ProductRepositoryProtocol) {
        self.productRepository = repository
    }
    
    func execute(id: String) throws -> ProductDetail {
        return try PerformAction.perform(productRepository.getProductDetail(id: id), orThrow: DomainError.genericError)
    }
}
