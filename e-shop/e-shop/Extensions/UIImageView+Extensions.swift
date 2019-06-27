//
//  UIImageView+Extensions.swift
//  e-shop
//
//  Created by Alex Meraz on 6/24/19.
//  Copyright © 2019 Alex Meraz. All rights reserved.
//

import UIKit

extension UIImageView {
    
    func loadImageFromURL(_ imgUrl: String){
        guard let url = URL(string: imgUrl) else { return }
        let request = URLRequest(url: url)
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: request) { (data, response, error) in
            if let error = error {
                print("Error UIImageView.loadImageFromURL(_ imgUrl:) - \(error.localizedDescription)")
            }
            if let data = data {
                DispatchQueue.main.async {
                    self.image = UIImage(data: data)
                }
            }
        }
        dataTask.resume()
    }
    
}
