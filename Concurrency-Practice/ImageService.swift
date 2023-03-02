//
//  ImageService.swift
//  Concurrency-Practice
//
//  Created by JongHoon on 2023/03/02.
//

import UIKit




let base = "https://user-images.githubusercontent.com/98168685/"

let images = [
    "222345990-8ed74863-8911-4a93-ac01-b53d063e7fc3.jpg",
    "222346579-02175c86-3153-434d-825f-9af8a2ba6fa0.jpg",
    "222346598-35407ca8-feef-4475-8b50-7f20e324910a.jpg",
    "222346616-63034db8-6908-4590-b6a8-af95a9cda861.jpg",
    "222346628-d3a80dd9-2e7d-4b54-918e-1b4f31722017.jpg"
]

final class ImageService {
    static let shared = ImageService()
    
    private init() { }
    
    func load(num: Int, completion: @escaping (UIImage) -> Void) {
        var image: UIImage = UIImage()
        guard let url = URL(string: "\(base)\(images[num])") else { return }
        
        URLSession.shared.dataTask(with: url) { Data, urlResponse, error in
            if let error = error {
                print("✨Error: \(error)")
            }
            
            if let data = Data {
                image = UIImage(data: data) ?? UIImage(systemName: "photo")!
                completion(image)
            }
        }
        .resume()
    }
}
