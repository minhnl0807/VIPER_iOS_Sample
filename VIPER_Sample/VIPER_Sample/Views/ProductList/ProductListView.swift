//
//  ProductListView.swift
//  VIPER_Sample
//
//  Created by Minh on 10/25/17.
//  Copyright © 2017 Minh. All rights reserved.
//

import Foundation

protocol ProductListViewProtocol {
    var presenter: ProductListPresenter? { get set }
    func showProducts(products: [Product])
    func showLoading()
    func hideLoading()
}
