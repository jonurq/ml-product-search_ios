//
//  DetailViewController.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 7/23/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    private let presenter: DetailScreenPresenter
    private let detailScreenView = DetailScreenView()
    
    required init(presenter: DetailScreenPresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = detailScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.getDetail()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if #available(iOS 11.0, *) {
            navigationItem.largeTitleDisplayMode = .never
        }
    }
}

extension DetailViewController: DetailScreenViewControllerProtocol {
    func showDetail(model: ProductDetailModel) {
        detailScreenView.setupModel(model)
    }
    
    func showLoading(show: Bool) {
        
    }
    
    func showError(show: Bool) {
        
    }
    
    
}
