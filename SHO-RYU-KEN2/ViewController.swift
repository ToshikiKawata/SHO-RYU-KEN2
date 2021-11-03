//
//  ViewController.swift
//  SHO-RYU-KEN2
//
//  Created by 川田俊希 on 2021/11/02.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var animation: UIImageView!
    var imageArrayAttack : Array<UIImage> = []
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            while let attackImage = UIImage(named: "attak\(imageArrayAttack.count+1)") {
                imageArrayAttack.append(attackImage)
            }
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
    
  
    @IBAction func push(_ sender: Any) {
    // アニメーションの適用
    animation.animationImages = imageArrayAttack
    // 1.5秒間隔
    animation.animationDuration = 0.8
    // 1回繰り返し
    animation.animationRepeatCount = 1
    // アニメーションを開始
    animation.startAnimating()
    }
}

