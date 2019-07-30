//
//  SearchScreenPresenter.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 7/2/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Foundation
import RxSwift

class SearchScreenPresenter {
    
    weak var view: SearchScreenViewControllerProtocol?
    let searchProduct: SearchProducts
    let disposeBag = DisposeBag()
    
    required init(searchProduct: SearchProducts) {
        self.searchProduct = searchProduct
    }
    
    func viewLoaded() {
        view?.showLoading(show: true)
        
    }
    
//    func searchProducts(with text: String) {
//        //TODO: RxSwift
//        
//        do {
//            let products = try searchProduct.execute(query: Query(q: text, limit: 10, offset: 0))
//            view?.showProducts(products: products.compactMap(ProductModel.fromDomain(productItem:)))
//        } catch {
//            view?.showError(show: true)
//        }
//    }
    
    func onSearchProduct(query: String) {
        searchProduct.executeRX(query: Query(q: query, limit: 10, offset: 0))
            .subscribeOn(SerialDispatchQueueScheduler(qos: .default))
            .observeOn(MainScheduler.instance)
            .subscribe(onSuccess: { [weak self] (products) in
                self?.view?.showProducts(products: products.compactMap(ProductModel.fromDomain(productItem:)))
            }) { [weak self] (error) in
                self?.view?.showError(show: true)
        }.disposed(by: disposeBag)
    }
    
    func onItemClick(id: String) {
        view?.goToDetail(id: id)
    }
}
