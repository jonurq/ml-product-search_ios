//
//  PerformAction.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 7/2/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Foundation

class PerformAction {
    static func perform<T>(_ expression: @autoclosure () throws -> T,
                    orThrow errorExpression: @autoclosure () -> Error) throws -> T {
        do {
            return try expression()
        } catch {
            throw errorExpression()
        }
    }
}
