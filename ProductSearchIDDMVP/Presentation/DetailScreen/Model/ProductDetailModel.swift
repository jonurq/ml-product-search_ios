//
//  ProductDetailModel.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 7/26/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Foundation

struct ProductDetailModel {
    let id: String
    
    static func fromDomain(productDetail: ProductDetail) -> ProductDetailModel {
        return ProductDetailModel(id: productDetail.id)
    }
}
