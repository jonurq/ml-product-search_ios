//
//  DetailScreenViewControllerProtocol.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 7/23/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Foundation

protocol DetailScreenViewControllerProtocol: class {
    func showLoading(show: Bool)
    func showError(show: Bool)
    func showDetail(model: ProductDetailModel)
}
