//
//  ViewController.swift
//  Concurrency-Practice
//
//  Created by JongHoon on 2023/03/02.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var imageView4: UIImageView!
    @IBOutlet weak var imageView5: UIImageView!
    
    @IBOutlet weak var loadButton1: UIButton!
    @IBOutlet weak var loadButton2: UIButton!
    @IBOutlet weak var loadButton3: UIButton!
    @IBOutlet weak var loadButton4: UIButton!
    @IBOutlet weak var loadButton5: UIButton!
    @IBOutlet weak var loadAllButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func tapLoad1(_ sender: Any) {
        imageView1.image = UIImage(systemName: "photo")
        ImageService.shared.load(num: 0) { [weak self] image in
            DispatchQueue.main.async {
                self?.imageView1.image = image
            }
        }
    }
    
    
    @IBAction func tapLoad2(_ sender: Any) {
        imageView2.image = UIImage(systemName: "photo")
        ImageService.shared.load(num: 1) { [weak self] image in
            DispatchQueue.main.async {
                self?.imageView2.image = image
            }
        }
    }
    
    @IBAction func tapLoad3(_ sender: Any) {
        imageView3.image = UIImage(systemName: "photo")
        ImageService.shared.load(num: 2) { [weak self] image in
            DispatchQueue.main.async {
                self?.imageView3.image = image
            }
        }
    }
    
    @IBAction func tapLoad4(_ sender: Any) {
        imageView4.image = UIImage(systemName: "photo")
        ImageService.shared.load(num: 3) { [weak self] image in
            DispatchQueue.main.async {
                self?.imageView4.image = image
            }
        }
    }
    
    @IBAction func tapLoad5(_ sender: Any) {
        imageView5.image = UIImage(systemName: "photo")
        ImageService.shared.load(num: 4) { [weak self] image in
            DispatchQueue.main.async {
                self?.imageView5.image = image
            }
        }
    }
    
    @IBAction func tapLoadAll(_ sender: Any) {
        [
            imageView1, imageView2,
            imageView3, imageView4,
            imageView5
        ].forEach { $0?.image = UIImage(systemName: "photo")}
        
        
        ImageService.shared.load(num: 0) { [weak self] image in
            DispatchQueue.main.async {
                self?.imageView1.image = image
            }
        }
        
        ImageService.shared.load(num: 1) { [weak self] image in
            DispatchQueue.main.async {
                self?.imageView2.image = image
            }
        }
        
        ImageService.shared.load(num: 2) { [weak self] image in
            DispatchQueue.main.async {
                self?.imageView3.image = image
            }
        }
        
        ImageService.shared.load(num: 3) { [weak self] image in
            DispatchQueue.main.async {
                self?.imageView4.image = image
            }
        }
        
        ImageService.shared.load(num: 4) { [weak self] image in
            DispatchQueue.main.async {
                self?.imageView5.image = image
            }
        }
    }
}

