//
//  ProductItem.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 6/25/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Foundation

struct ProductItem {
    let id, title: String
    let price: Double
    let condition: String
    
    var formattedPrice: String {
        return "$ \(price)"
    }
    
    var formattedCondition: String {
        switch condition {
        case "new":
            return "Nuevo"
        case "used":
            return "Usado"
            
        default:
            return ""
        }
    }
}
