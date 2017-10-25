//
//  ProductListInteractor.swift
//  VIPER_Sample
//
//  Created by Minh on 10/25/17.
//  Copyright © 2017 Minh. All rights reserved.
//

import Foundation

protocol ProductListInteractorProtocol {
    var presenter: ProductListInteractorOutputProtocol? { get set }
    
    func retrieveProductList()
}

protocol ProductListInteractorInputProtocol {
    var presenter: ProductListInteractorOutputProtocol? { get set }
    
    func retrieveProductList()
}

protocol ProductListInteractorOutputProtocol {
    func didRetrieveProductList(products: [Product])
}

class ProductListInteractor: ProductListInteractorProtocol, ProductListInteractorInputProtocol{
    var presenter: ProductListInteractorOutputProtocol?
    
    required init(presenter: ProductListInteractorOutputProtocol) {
        self.presenter = presenter
    }
    
    var products = [
        Product(name: "Monitor", price: 20),
        Product(name: "Keyboard", price: 6),
        Product(name: "Mouse", price: 5)
    ]
    
    func retrieveProductList() {
        presenter?.didRetrieveProductList(products: products)
    }
}
