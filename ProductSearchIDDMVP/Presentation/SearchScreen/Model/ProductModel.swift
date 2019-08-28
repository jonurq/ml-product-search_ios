//
//  ProductModel.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 7/17/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Foundation

struct ProductModel {
    
    let id, title, condition, price, image: String
    
    static func fromDomain(productItem: ProductItem) -> ProductModel {
        return ProductModel(id: productItem.id,
                            title: productItem.title,
                            condition: formattedCondition(condition: productItem.condition),
                            price: formattedPrice(price: productItem.price), image: secureImage(image: productItem.image))
    }
    
    private static func formattedCondition(condition: String) -> String {
        switch condition {
        case "new":
            return "Nuevo"
        case "used":
            return "Usado"
            
        default:
            return ""
        }
    }
    
    private static func formattedPrice(price: Double) -> String {
        return "$ \(price)"
    }
    
    private static func secureImage(image: String) -> String {
        return image.replacingOccurrences(of: "http", with: "https")
    }
    
}
