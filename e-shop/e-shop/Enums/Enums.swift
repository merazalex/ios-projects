//
//  Enums.swift
//  e-shop
//
//  Created by Alex Meraz on 6/24/19.
//  Copyright © 2019 Alex Meraz. All rights reserved.
//

import UIKit

enum StoryboardName: String {
    case categories   = "Categories"
    case shoppingCart = "ShoppingCart"
    case favorites    = "Favorites"
    case search       = "Search"
    
    var image: UIImage? {
        switch self {
        case .categories:
            return UIImage.init(named: "categoriesTB")
        case .shoppingCart:
            return UIImage.init(named: "shoppingCartTB")
        case .favorites:
            return UIImage.init(named: "favoritesTB")
        default:
            return nil
        }
        
    }
}

enum CategorySection {
    case banner(images: [UIImage?])
    case singleSection(_ section: SingleSection)
    case carousel(products: [Product])
    
    var height: CGFloat {
        switch self {
        case .banner(_):
            return 100.0
        default:
            return 50.0
        }
    }
}

enum SingleSection: String {
    case bags = "Bags"
    case sunglasses = "Sunglasses"
    case watches = "Watches"
    case shoes = "Shoes"
    
    var image: UIImage? {
        switch self {
        case .bags:
            return UIImage(named: "sectionBags")
        case .sunglasses:
            return UIImage(named: "sectionSunglasses")
        case .watches:
            return UIImage(named: "sectionWatches")
        case .shoes:
            return UIImage(named: "sectionShoes")
        }
    }
}
