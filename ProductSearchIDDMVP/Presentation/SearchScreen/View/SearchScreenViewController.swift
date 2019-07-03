//
//  SearchScreenViewController.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 7/2/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import UIKit

class SearchScreenViewController: UIViewController {
    
    private let presenter: SearchScreenPresenter
    
    required init(presenter: SearchScreenPresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SearchScreenViewController: SearchScreenViewControllerProtocol {
    func showLoading(show: Bool) {
        //TODO:
    }
    
    func showError(show: Bool) {
        //TODO:
    }
    
    func showProducts(products: [ProductItem]) {
        //TODO:
    }
    
    
}
