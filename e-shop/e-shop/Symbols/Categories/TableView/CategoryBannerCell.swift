//
//  CategoryBannerCell.swift
//  e-shop
//
//  Created by Alex Meraz on 6/26/19.
//  Copyright © 2019 Alex Meraz. All rights reserved.
//

import UIKit

class CategoryBannerCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            collectionView.register(BannerCell.self)
        }
    }
    @IBOutlet weak var pageControl: UIPageControl!
    
    var images = [UIImage?]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func configure(with images: [UIImage?]) {
        self.images = images
    }
    
}

extension CategoryBannerCell: UICollectionViewDelegate {
    
}

extension CategoryBannerCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(for: indexPath) as! BannerCell
        
        let currentImage = images[indexPath.row]
        cell.configure(with: currentImage)
        
        return cell
    }
    
}

extension CategoryBannerCell: UIScrollViewDelegate {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        if scrollView is UICollectionView {
            pageControl.currentPage = Int(collectionView.contentOffset.x / collectionView.frame.height)
        }
    }
}
