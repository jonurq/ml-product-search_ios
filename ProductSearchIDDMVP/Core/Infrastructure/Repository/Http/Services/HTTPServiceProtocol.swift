//
//  ProductSearchServiceProtocol.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 6/27/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Foundation

protocol HTTPServiceProtocol {
    func get(path: String, params: [String: Any]?) -> (Data?, Error?)
}
