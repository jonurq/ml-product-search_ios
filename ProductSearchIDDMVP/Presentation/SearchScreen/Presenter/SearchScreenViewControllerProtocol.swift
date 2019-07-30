//
//  SearchScreenViewControllerProtocol.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 7/2/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Foundation

protocol SearchScreenViewControllerProtocol: class {
    func showLoading(show: Bool)
    func showError(show: Bool)
    func showProducts(products: [ProductModel])
    func goToDetail(id: String)
}
