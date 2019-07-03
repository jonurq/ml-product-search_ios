//
//  SearchProducts.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 6/25/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Foundation

class SearchProducts {
    
    private let productRepository: ProductRepositoryProtocol
    
    required init(repository: ProductRepositoryProtocol) {
        self.productRepository = repository
    }
}

extension SearchProducts: SearchProductsProtocol {
    func execute(query: Query) throws -> [ProductItem] {
        return try PerformAction.perform(productRepository.searchProduct(q: query), orThrow: DomainError.genericError )
    }
}
