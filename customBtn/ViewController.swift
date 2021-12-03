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

        let customBtn = customButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        self.view.addSubview(customBtn)
        
    }
    
}

