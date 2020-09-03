//
//  ViewController.swift
//  Unsplash Random Demo
//
//  Created by Omar Tan Johan Tan on 03/09/2020.
//  Copyright © 2020 Omar Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var reloadButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        reloadButton.layer.cornerRadius = 25
        userLabel.text = ""
        likesLabel.text = ""
        
        getImage()
    }

    func getImage() {
        if let url = URL.with(string: "photos/random") {
            var urlRequest = URLRequest(url: url)
            urlRequest.setValue("Client-ID fkKHIJcWshuaMTzRniaOVOOGdYumCX7HJbLa7x2t2Bk", forHTTPHeaderField: "Authorization")
            
            URLSession.shared.dataTask(with: urlRequest) { data, response, error in
                if let data = data {
                    do {
                        let image = try JSONDecoder().decode(Image.self, from: data)
                        
                        self.photo.load(url: URL(string: image.urls.regular)!)
                        
                        DispatchQueue.main.async {
                            self.userLabel.text = image.user.name
                            self.likesLabel.text = "\(String(image.likes)) likes"
                        }
                    } catch let error {
                        print(error)
                    }
                }
            }.resume()
        }
    }
    
    
    @IBAction func getPhoto(_ sender: UIButton) {
        getImage()
    }
    
}

// MARK: Structs
struct Image:Decodable {
    let id:String
    let likes:Int
    let user:User
    let urls:URLs
}

struct User:Decodable {
    let name:String
}

struct URLs:Decodable {
    let raw:String
    let full:String
    let regular:String
    let small:String
    let thumb:String
}

// MARK: Extensions
extension URL {
    private static var baseURL:String {
        return "https://api.unsplash.com/"
        
    }
    
    static func with(string: String) -> URL? {
        return URL(string: "\(baseURL)\(string)")
    }
}

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
