//
//  ProductListDataSource.swift
//  VIPER_Sample
//
//  Created by Minh on 10/25/17.
//  Copyright © 2017 Minh. All rights reserved.
//

import Foundation
import UIKit

class ProductListDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    var products: [Product]!
    var viewController: ProductListViewController!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("ProductCell", owner: self, options: nil)?.first as! ProductCell
        let product = products[indexPath.row]
        cell.nameLabel.text = product.name
        cell.priceLabel.text = String(product.price)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewController.presenter?.showProductDetail(product: products[indexPath.row])
    }
}
