//
//  CodableUtils.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 7/2/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Foundation

class CodableUtils {
    static func decode<T: Codable>( _ data: Data?, model: T.Type) throws -> T {
        guard let data = data else { throw CodableError.emptyData } //Return empty error
        
        do {
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            throw CodableError.decodingError
        }
    }
}
