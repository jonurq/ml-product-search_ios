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
    
    //Agregar failable init
//    init?(id: String, title: String, price: Double, condition: String) {
//        if price < 0 {
//            return nil
//        }
//    }
}
