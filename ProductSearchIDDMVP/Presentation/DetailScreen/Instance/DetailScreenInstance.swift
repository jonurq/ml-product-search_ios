//
//  DetailScreenInstance.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 7/23/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Foundation

class DetailScreenInstance {
    static func viewController(id: String) -> DetailViewController {
        let detailScreenPresenter = presenter(id: id)
        let viewController = DetailViewController(presenter: detailScreenPresenter)
        detailScreenPresenter.view = viewController
        return viewController
    }
    
    private static func presenter(id: String) -> DetailScreenPresenter {
        return DetailScreenPresenter(id: id, getProductDetail: ProductAppInstance.resolveGetProductDetail())
    }
}
