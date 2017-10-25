//
//  ProductListRoute.swift
//  VIPER_Sample
//
//  Created by Minh on 10/25/17.
//  Copyright © 2017 Minh. All rights reserved.
//

import Foundation
import UIKit

protocol ProductListRouteProtocol {
    func presentProductDetailScreen(from view: UIViewController, forProduct product: Product)
}

class ProductListRoute: ProductListRouteProtocol {
    func presentProductDetailScreen(from view: UIViewController, forProduct product: Product) {
        let productDetailVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProductDetailVC") as! ProductDetailViewController
        productDetailVC.product = product
        view.navigationController?.pushViewController(productDetailVC, animated: true)
    }
}
