//
//  BannerCell.swift
//  e-shop
//
//  Created by Alex Meraz on 6/26/19.
//  Copyright © 2019 Alex Meraz. All rights reserved.
//

import UIKit

class BannerCell: UICollectionViewCell {

    @IBOutlet weak var content: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(with image: UIImage?) {
        imageView.image = image
    }
    
}
