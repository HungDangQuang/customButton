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

//        let customBtn = customButton(frame: CGRect(x: 100, y: 100, width: 100, height: 40))
//        customBtn.setImage(image: UIImage(systemName: "house")!)
//        customBtn.setTitle(title: "hung")
//        customBtn.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
//        self.view.addSubview(customBtn)
                
        let customBtn = customButton(frame: CGRect(x: 100, y: 100, width: 100, height: 40), title: "Click Me", selectedImage: UIImage(systemName: "house")!)
        customBtn.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        self.view.addSubview(customBtn)
        
        let btn2 = customButton(frame: CGRect(x: 100, y: 150, width: 100, height: 40), title: "Button 2")
        btn2.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        self.view.addSubview(btn2)
        
        let btn3 = customButton(frame: CGRect(x: 100, y: 200, width: 100, height: 40),selectedImage: UIImage(systemName: "house")!)
        btn3.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        self.view.addSubview(btn3)
        
        
    }
    @objc func pressed(){
        print("Button Pressed")
    }
    
    @objc func buttonTapped(sender: customButton){
        sender.showAnimation {
            print("hello")
        }
    }
    
}

