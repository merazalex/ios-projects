//
//  CategoriesViewModel.swift
//  e-shop
//
//  Created by Alex Meraz on 6/24/19.
//  Copyright © 2019 Alex Meraz. All rights reserved.
//

import Foundation

class CategoriesViewModel {
    
    func getLocalCategorySections() -> [CategorySection] {
        let newCategorySections = LocalDataProvider.shared.getLocalCategorySections()
        return newCategorySections
    }
    
}
