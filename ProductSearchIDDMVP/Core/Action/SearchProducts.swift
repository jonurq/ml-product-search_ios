//
//  SearchProducts.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 6/25/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Foundation
import RxSwift

class SearchProducts {
    
    private let productRepository: ProductRepositoryProtocol
    
    required init(repository: ProductRepositoryProtocol) {
        self.productRepository = repository
    }
    
    private func execute(query: Query) throws -> [ProductItem] {
        return try PerformAction.perform(productRepository.searchProduct(q: query), orThrow: DomainError.genericError)
    }
    
    func executeRX(query: Query) -> Single<[ProductItem]> {
        return Single.deferred({ () -> PrimitiveSequence<SingleTrait, [ProductItem]> in
            do {
                return try Single.just(self.execute(query: query))
            } catch {
                return Single.error(DomainError.genericError)
            }
        })
    }
}



//        do {
//            return try Single.just(execute(query: query))
//        } catch {
//            return Single.error(DomainError.genericError)
//        }
