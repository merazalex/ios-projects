//
//  UIViewController+Extensions.swift
//  e-shop
//
//  Created by Alex Meraz on 6/25/19.
//  Copyright © 2019 Alex Meraz. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func setupTabBarItem(with storyboardName: StoryboardName, tag: Int) {
        self.tabBarItem = UITabBarItem(title: nil, image: storyboardName.image, tag: tag)
    }
    
    func setUpSearchBar(searchViewController: SearchController) {
        let searchController = UISearchController(searchResultsController: searchViewController)
        searchController.searchResultsUpdater = searchViewController
        searchController.obscuresBackgroundDuringPresentation = true
        searchController.searchBar.placeholder = "Search products"
        //searchController.searchBar.tintColor = UIColor.blue
        searchController.searchBar.barTintColor = .white
        searchController.searchBar.backgroundImage = UIImage()
        
        definesPresentationContext = true
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
    }
    
}
