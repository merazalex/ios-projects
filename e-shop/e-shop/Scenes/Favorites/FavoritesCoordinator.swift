//
//  FavoritesCoordinator.swift
//  e-shop
//
//  Created by Alex Meraz on 6/24/19.
//  Copyright © 2019 Alex Meraz. All rights reserved.
//

import UIKit

class FavoritesCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    var favoritesController: FavoritesController!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        favoritesController = FavoritesController.instantiateFrom(storyboardName: .favorites)
        favoritesController.coordinator = self
        // Do any additional setup after pushing the view controller into the navigation.
        favoritesController.setupTabBarItem(with: .favorites, tag: 2)
        navigationController.pushViewController(favoritesController, animated: false)
    }
    
}
