//
//  ProductDetailResponse.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 6/27/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Foundation

struct ProductDetailResponse: Codable {
    let id: String
    
    func toModel() -> ProductDetail {
        return ProductDetail(id: id)
    }
}
