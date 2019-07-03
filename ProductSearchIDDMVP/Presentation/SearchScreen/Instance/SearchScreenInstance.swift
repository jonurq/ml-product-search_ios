//
//  SearchScreenInstance.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 7/2/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Foundation

class SearchScreenInstance {
    
    static func viewController() -> SearchScreenViewController {
        let searchScreenPresenter = presenter()
        let viewController = SearchScreenViewController(presenter: searchScreenPresenter)
        searchScreenPresenter.view = viewController
        return viewController
    }
    
    private static func presenter() -> SearchScreenPresenter {
        return SearchScreenPresenter(searchProduct: ProductAppInstance.resolveSearchProducts())
    }
}
