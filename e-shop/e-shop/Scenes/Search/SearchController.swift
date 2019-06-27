//
//  SearchController.swift
//  e-shop
//
//  Created by Alex Meraz on 6/25/19.
//  Copyright © 2019 Alex Meraz. All rights reserved.
//

import UIKit

class SearchController: BaseController, Storyboarded {

    weak var coordinator: SearchCoordinator?
    var viewModel: SearchViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

extension SearchController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        
    }
}
