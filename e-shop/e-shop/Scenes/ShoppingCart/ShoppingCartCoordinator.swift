//
//  ShoppingCartCoordinator.swift
//  e-shop
//
//  Created by Alex Meraz on 6/24/19.
//  Copyright © 2019 Alex Meraz. All rights reserved.
//

import UIKit

class ShoppingCartCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    var shoppingCartController: ShoppingCartController!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        shoppingCartController = ShoppingCartController.instantiateFrom(storyboardName: .shoppingCart)
        shoppingCartController.coordinator = self
        // Do any additional setup after pushing the view controller into the navigation.
        shoppingCartController.setupTabBarItem(with: .shoppingCart, tag: 1)
        navigationController.pushViewController(shoppingCartController, animated: false)
    }
    
}
