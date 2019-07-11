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
    private let searchScreenView = SearchScreenView()
    
    required init(presenter: SearchScreenPresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        let view = searchScreenView
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Search"
        self.definesPresentationContext = true
        
        setupSearchController()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if #available(iOS 11.0, *) {
            navigationItem.largeTitleDisplayMode = .always
            navigationController?.navigationBar.prefersLargeTitles = true
        }
    }
    
    fileprivate func setupSearchController() {
        let search = UISearchController(searchResultsController: nil)
        search.searchBar.delegate = self
        search.obscuresBackgroundDuringPresentation = false
        search.searchBar.placeholder = "Search Products"
        navigationItem.searchController = search
        navigationItem.hidesSearchBarWhenScrolling = false
    }
}

extension SearchScreenViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchScreenView.clearProducts()
        guard let textToSearch = searchBar.text, !textToSearch.isEmpty else {
            return
        }
        
        presenter.searchProducts(with: textToSearch)
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
        searchScreenView.updateProducts(products)
    }
    
    
}
