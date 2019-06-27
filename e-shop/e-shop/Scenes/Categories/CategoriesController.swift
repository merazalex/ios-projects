//
//  CategoriesController.swift
//  e-shop
//
//  Created by Alex Meraz on 6/24/19.
//  Copyright © 2019 Alex Meraz. All rights reserved.
//

import UIKit

class CategoriesController: BaseController, Storyboarded {

    weak var coordinator: CategoriesCoordinator?
    var viewModel: CategoriesViewModel?
    
    var categorySections = [CategorySection]() {
        didSet{
            tableView.reloadData()
        }
    }
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.register(CategoryBannerCell.self)
            tableView.register(SingleSectionCell.self)
            tableView.register(CarouselCell.self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        categorySections = viewModel?.getLocalCategorySections() ?? [CategorySection]()
    }
    
}

extension CategoriesController: UITableViewDelegate {
    
}

extension CategoriesController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categorySections.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentSection = categorySections[indexPath.row]
        
        switch currentSection {
        case .banner(let images):
            let cell = tableView.dequeueReusableCell(for: CategoryBannerCell.self, with: indexPath)
            cell.configure(with: images)
            return cell
        case .singleSection(let section):
            let cell = tableView.dequeueReusableCell(for: SingleSectionCell.self, with: indexPath)
            cell.configure(with: section)
            return cell
        case .carousel(let products):
            let cell = tableView.dequeueReusableCell(for: CarouselCell.self, with: indexPath)
            cell.configure(with: products)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let currentSection = categorySections[indexPath.row]
        return currentSection.height
    }
    
}
