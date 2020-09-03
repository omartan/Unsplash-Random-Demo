//
//  URL+extension.swift
//  Unsplash Random Demo
//
//  Created by Omar Tan Johan Tan on 03/09/2020.
//  Copyright © 2020 Omar Tan. All rights reserved.
//

import Foundation

extension URL {
    private static var baseURL:String {
        return "https://api.unsplash.com/"
        
    }
    
    static func with(string: String) -> URL? {
        return URL(string: "\(baseURL)\(string)")
    }
}
