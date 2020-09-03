//
//  Image.swift
//  Unsplash Random Demo
//
//  Created by Omar Tan Johan Tan on 03/09/2020.
//  Copyright © 2020 Omar Tan. All rights reserved.
//

import Foundation

struct Image:Decodable {
    let id:String
    let likes:Int
    let user:User
    let urls:URLs
}
