//
//  ProductDetailViewController.swift
//  VIPER_Sample
//
//  Created by Minh on 10/25/17.
//  Copyright © 2017 Minh. All rights reserved.
//

import UIKit

class ProductDetailViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    var product: Product = Product(name: "", price: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = product.name
        priceLabel.text = String(product.price)
    }
}
