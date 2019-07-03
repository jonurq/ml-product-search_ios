//
//  SearchProductsProtocol.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 7/2/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Foundation

protocol SearchProductsProtocol {
    func execute(query: Query) throws -> [ProductItem]
}
