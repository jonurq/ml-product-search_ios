//
//  ProductSearchIDDMVPTests.swift
//  ProductSearchIDDMVPTests
//
//  Created by Jonatan Urquiza on 6/20/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import XCTest
import RxSwift

@testable import ProductSearchIDDMVP

class ProductSearchIDDMVPTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        Single.just(helloworld())
//            .subscribe(onSuccess: { (hello) in
//            print("El resultado es \(hello)")
//        }) { (error) in
//            print("El error es \(error)")
//        }
    }
    
    func testExampleDeferred() {
        Single.deferred { () -> PrimitiveSequence<SingleTrait, String> in
            Single.just(self.helloworld())
            }
//            .subscribe(onSuccess: { (hello) in
//                print("El resultado es \(hello)")
//            }) { (error) in
//                print("El error es \(error)")
//        }
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func helloworld() -> String {
        print("Estoy ejecutando el metodo")
        return "hola"
    }

}
