//
//  SearchProductError.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 7/2/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Foundation

enum ApiError: Error {
    case invalidQuery(url: String)
    case error(_ error: Error)
}
