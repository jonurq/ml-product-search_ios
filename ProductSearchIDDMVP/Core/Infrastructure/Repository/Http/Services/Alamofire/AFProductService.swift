//
//  AFProductService.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 6/28/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import Alamofire
import Alamofire_Synchronous

class AFProductService: HTTPServiceProtocol {    
    private let baseUrl: String
    
    required init(baseUrl: String) {
        self.baseUrl = baseUrl
    }
    
    func get(path: String, params: [String : Any]?) -> (Data?, Error?) {
        let requestResponse = Alamofire.request(baseUrl + path, parameters: params).responseJSON()
        return (requestResponse.data, requestResponse.error)
    }
    

}
