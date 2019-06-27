//
//  SearchCoordinator.swift
//  e-shop
//
//  Created by Alex Meraz on 6/25/19.
//  Copyright © 2019 Alex Meraz. All rights reserved.
//

import UIKit

class SearchCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    var searchController: SearchController!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        
        searchController = SearchController.instantiateFrom(storyboardName: .search)
        searchController.coordinator = self
    }
    
    func start() {
        // Do any additional setup after pushing the view controller into the navigation.
        navigationController.pushViewController(searchController, animated: false)
    }
    
}
