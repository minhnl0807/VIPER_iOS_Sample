//
//  ProductListPresenter.swift
//  VIPER_Sample
//
//  Created by Minh on 10/25/17.
//  Copyright © 2017 Minh. All rights reserved.
//

import Foundation
import UIKit

protocol ProductListPresenterProtocol {
    var view: ProductListViewProtocol? { get set }
    var interactor: ProductListInteractorInputProtocol? { get set }
    var route: ProductListRouteProtocol? { get set }
    func viewDidLoad()
    func showProductDetail(product: Product)
}

class ProductListPresenter: ProductListPresenterProtocol {
    var view: ProductListViewProtocol?
    var interactor: ProductListInteractorInputProtocol?
    var route: ProductListRouteProtocol?
    
    required init(view: ProductListViewProtocol) {
        self.view = view
        interactor = ProductListInteractor(presenter: self)
        route = ProductListRoute()
    }
    
    func viewDidLoad() {
        view?.showLoading()
        interactor?.retrieveProductList()
    }
    
    func showProductDetail(product: Product) {
        route?.presentProductDetailScreen(from: view! as! UIViewController, forProduct: product)
    }
}

extension ProductListPresenter: ProductListInteractorOutputProtocol {
    func didRetrieveProductList(products: [Product]) {
        view?.hideLoading()
        view?.showProducts(products: products)
    }
}
