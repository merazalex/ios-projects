//
//  UITableView+Extensions.swift
//  e-shop
//
//  Created by Alex Meraz on 6/24/19.
//  Copyright © 2019 Alex Meraz. All rights reserved.
//

import UIKit

extension UITableView {
    func register<T: UITableViewCell>(_: T.Type) {
        register(T.self, forCellReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UITableViewCell>(for cellType: T.Type, with indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: cellType.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Unable to dequeue reusable table view cell with identifier: \(T.reuseIdentifier)")
        }
        return cell
    }
}
