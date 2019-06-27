//
//  LocalDataProvider.swift
//  e-shop
//
//  Created by Alex Meraz on 6/26/19.
//  Copyright © 2019 Alex Meraz. All rights reserved.
//

import UIKit

class LocalDataProvider {
    static let shared = LocalDataProvider()
    private init() {}
    
    func getLocalCategorySections() -> [CategorySection] {
        var newCategorySections = [CategorySection]()
        
        let banner1 = UIImage(named: "banner1")
        let banner2 = UIImage(named: "banner2")
        let banner3 = UIImage(named: "banner3")
        let banners = [banner1, banner2, banner3]
        
        let bannerSection = CategorySection.banner(images: banners)
        
        newCategorySections.append(bannerSection)
        return newCategorySections
    }
    
}
