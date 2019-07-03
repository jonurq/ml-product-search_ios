//
//  SearchScreenPresenter.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 7/2/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Foundation

class SearchScreenPresenter {
    
    weak var view: SearchScreenViewControllerProtocol?
    let searchProduct: SearchProductsProtocol
    
    required init(searchProduct: SearchProductsProtocol) {
        self.searchProduct = searchProduct
    }
}
