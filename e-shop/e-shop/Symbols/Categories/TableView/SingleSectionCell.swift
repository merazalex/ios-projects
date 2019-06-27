//
//  SingleSectionCell.swift
//  e-shop
//
//  Created by Alex Meraz on 6/26/19.
//  Copyright © 2019 Alex Meraz. All rights reserved.
//

import UIKit

class SingleSectionCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageV: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with section: SingleSection) {
        nameLabel.text = section.rawValue
        imageV.image = section.image
    }
    
}
