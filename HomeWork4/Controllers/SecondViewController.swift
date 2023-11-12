//
//  SecondViewController.swift
//  HomeWork4
//
//  Created by User on 12/11/23.
//

import UIKit

class SecondViewController: UIViewController {

    var goods: Goods?
    
    private let goodsImage = UIImageView(frame:
                                        CGRect(x: 20, y: 20, width: 350, height: 350))
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        print("Goods: \(goods)")
        
        view.addSubview(goodsImage)
        
        if let item = goods {
            goodsImage.image = UIImage(named: item.image)
        }
    }
}
