//
//  ViewController.swift
//  VIPER_Sample
//
//  Created by Minh on 10/25/17.
//  Copyright © 2017 Minh. All rights reserved.
//

import UIKit

class ProductListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var presenter: ProductListPresenter?
    var productListDataSource: ProductListDataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
        presenter = ProductListPresenter(view: self)
        presenter?.viewDidLoad()
    }
    
    func initialize() {
        productListDataSource = ProductListDataSource()
        productListDataSource.viewController = self
    }
}

extension ProductListViewController: ProductListViewProtocol {
    func showProducts(products: [Product]) {
        productListDataSource.products = products
        tableView.dataSource = productListDataSource
        tableView.delegate = productListDataSource
        tableView.reloadData()
    }
    
    func showLoading() {
        
    }
    
    func hideLoading() {
        
    }
}
