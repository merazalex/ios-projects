//
//  CarouselCell.swift
//  e-shop
//
//  Created by Alex Meraz on 6/26/19.
//  Copyright © 2019 Alex Meraz. All rights reserved.
//

import UIKit

class CarouselCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var products = [Product]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with products: [Product]) {
        self.products = products
    }
    
}
