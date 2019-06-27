//
//  Storyboarded.swift
//  e-shop
//
//  Created by Alex Meraz on 6/24/19.
//  Copyright © 2019 Alex Meraz. All rights reserved.
//

import UIKit

protocol Storyboarded {
    static func instantiateFrom(storyboardName: StoryboardName) -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiateFrom(storyboardName: StoryboardName) -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: storyboardName.rawValue, bundle: Bundle.main)
        guard let vc = storyboard.instantiateViewController(withIdentifier: id) as? Self else {
            fatalError("Fatal error Storyboarded.instantiateFrom(storyboardName:) - impossible to instantiate view controller from name = \(storyboardName)")
        }
        return vc
    }
}
