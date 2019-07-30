//
//  CacheProductRepository.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 7/17/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Foundation

class RealmCacheProductRepository {
    
    let source: ProductRepositoryProtocol
    let databaseSource: Any //RealmDatabase
    
    init(source: ProductRepositoryProtocol, databaseSource: Any) {
        self.source = source
        self.databaseSource = databaseSource
    }
}

extension RealmCacheProductRepository: ProductRepositoryProtocol {
    func searchProduct(q: Query) throws -> [ProductItem] {
        
        //TODO:
        //let products = databaseSource.getQuery() -> [ProductItem]?
        
        //if let products = products, products.count > 0 {
        //return products
        //}
        
        let products = try source.searchProduct(q: q)
        
        //databaseSource.save(products)
        
        return products
        
    }
    
    func getProductDetail(id: String) throws -> ProductDetail {
        //TODO:
        //let products = databaseSource.getQuery() -> [ProductItem]?
        
        //if let products = products, products.count > 0 {
        //return products
        //}
        
        let productDetail = try source.getProductDetail(id: id)
        
        //databaseSource.save(products)
        
        return productDetail
    }
    
    
}
