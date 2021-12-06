//
//  customBtn.swift
//  customBtn
//
//  Created by QUANG HUNG on 02/Dec/2021.
//

import Foundation
import UIKit

class customButton: UIControl {
    
    var attributedTitle: UILabel?
    var currentImage: UIImageView?
    
    override init(frame: CGRect) {
    super.init(frame: frame)
    self.backgroundColor = .gray
    }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
    
    public func setTitle(title: String){
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        lbl.text = title
        lbl.textAlignment = .center
        lbl.translatesAutoresizingMaskIntoConstraints = false
        attributedTitle = lbl
        self.addSubview(attributedTitle!)
        setUpLayout()

    }
    
    func setImage(image: UIImage){
        currentImage = UIImageView(image: image, highlightedImage: nil)
        currentImage?.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(currentImage!)
        setUpLayout()
    }
    
    func setUpLayout(){
        // Clear Old Constraints
        self.clearConstraints()
        
        if attributedTitle != nil && currentImage != nil {
            print("case 1")
            NSLayoutConstraint.activate([
            
                        // center vertically
                        attributedTitle!.centerYAnchor.constraint(equalTo: centerYAnchor),
                        currentImage!.centerYAnchor.constraint(equalTo: centerYAnchor),
            
                        // Leading: cach trai
                        currentImage!.leadingAnchor.constraint(equalTo: leadingAnchor, constant: (self.frame.width - ((currentImage!.image?.size.width)! + attributedTitle!.intrinsicContentSize.width))/2),
                        // cạnh trái lbl cách cạnh phải img 0px
                        attributedTitle!.leadingAnchor.constraint(equalTo: currentImage!.trailingAnchor)
                    ])
        }
        else if attributedTitle != nil && currentImage == nil {
            print("case 2")
            NSLayoutConstraint.activate([
            
                        // center vertically
                        attributedTitle!.centerYAnchor.constraint(equalTo: centerYAnchor),
//                         Leading: cach trai
                        attributedTitle!.leadingAnchor.constraint(equalTo: leadingAnchor, constant: (self.frame.width -  attributedTitle!.intrinsicContentSize.width)/2),
//                        attributedTitle!.centerXAnchor.constraint(equalTo: centerXAnchor)
                        // cạnh trái lbl cách cạnh phải img 0px
                    ])
        }
    
        else if attributedTitle == nil && currentImage != nil {
            print("case 3")
            NSLayoutConstraint.activate([
                currentImage!.centerYAnchor.constraint(equalTo: centerYAnchor),
                currentImage!.centerXAnchor.constraint(equalTo: centerXAnchor)
            ])
        }
        else {
            return
        }
    }
    
    
}

extension UIView {

    /**
     Removes all constrains for this view
     */
    func clearConstraints() {
            for subview in self.subviews {
                subview.clearConstraints()
            }
            self.removeConstraints(self.constraints)
        }
}
