//
//  MainTabBarController.swift
//  e-shop
//
//  Created by Alex Meraz on 6/24/19.
//  Copyright © 2019 Alex Meraz. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    let categoriesCoordinator = CategoriesCoordinator(navigationController: UINavigationController())
    let shoppingCartCoordinator = ShoppingCartCoordinator(navigationController: UINavigationController())
    let favoritesCoordinator = FavoritesCoordinator(navigationController: UINavigationController())

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        categoriesCoordinator.start()
        shoppingCartCoordinator.start()
        favoritesCoordinator.start()
        
        viewControllers =
            [categoriesCoordinator.navigationController,
            shoppingCartCoordinator.navigationController,
            favoritesCoordinator.navigationController]
    }
    
}
