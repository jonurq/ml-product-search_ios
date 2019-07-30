//
//  DetailScreenPresenter.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 7/23/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Foundation

class DetailScreenPresenter {
    
    weak var view: DetailScreenViewControllerProtocol?
    let getProductDetail: GetProductDetail
    let id: String
    
    required init(id: String, getProductDetail: GetProductDetail) {
        self.id = id
        self.getProductDetail = getProductDetail
    }
    
    func getDetail() {
        
        do {
            let detail = try getProductDetail.execute(id: id)
            
            view?.showDetail(model: ProductDetailModel.fromDomain(productDetail: detail))
        } catch {
            view?.showError(show: true)
        }
    }
}
