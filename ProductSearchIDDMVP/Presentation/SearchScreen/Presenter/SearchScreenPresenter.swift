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
    
    func viewLoaded() {
        view?.showLoading(show: true)
        
    }
    
    func searchProducts(with text: String) {
        //TODO: RxSwift
        do {
            let products = try searchProduct.execute(query: Query(q: text, limit: 10, offset: 0))
            view?.showProducts(products: products)
        } catch {
            view?.showError(show: true)
        }
        
        
        
    }
}
