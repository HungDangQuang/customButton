//
//  ViewController.swift
//  customBtn
//
//  Created by QUANG HUNG on 02/Dec/2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let customBtn = customButton(frame: CGRect(x: 100, y: 100, width: 100, height: 40))
        customBtn.setImage(image: UIImage(systemName: "house")!)
        customBtn.setTitle(title: "hung")
        customBtn.addTarget(self, action: #selector(pressed), for: .touchUpInside)
        self.view.addSubview(customBtn)
            
    }
    @objc func pressed(){
        print("Button Pressed")
    }
    
}

