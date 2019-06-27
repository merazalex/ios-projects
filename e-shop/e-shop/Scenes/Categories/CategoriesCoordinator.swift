//
//  CategoriesCoordinator.swift
//  e-shop
//
//  Created by Alex Meraz on 6/24/19.
//  Copyright © 2019 Alex Meraz. All rights reserved.
//

import UIKit

class CategoriesCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    var categoriesController: CategoriesController!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        categoriesController = CategoriesController.instantiateFrom(storyboardName: .categories)
        categoriesController.coordinator = self
        categoriesController.viewModel = CategoriesViewModel()
        // Do any additional setup after pushing the view controller into the navigation.
        categoriesController.setupTabBarItem(with: .categories, tag: 0)
        
        let searchCoordinator = SearchCoordinator(navigationController: navigationController)
        categoriesController.setUpSearchBar(searchViewController: searchCoordinator.searchController)
        
        navigationController.pushViewController(categoriesController, animated: false)
    }
    
}
