//
//  UIImageView+Extension.swift
//  Unsplash Random Demo
//
//  Created by Omar Tan Johan Tan on 03/09/2020.
//  Copyright © 2020 Omar Tan. All rights reserved.
//

import UIKit

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
