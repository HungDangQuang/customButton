//
//  customBtn.swift
//  customBtn
//
//  Created by QUANG HUNG on 02/Dec/2021.
//

import Foundation
import UIKit

class customButton: UIControl {

    lazy var attributedTitle: UILabel = {
        let title = UILabel()
        title.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        title.text = "Click Me"
        title.textAlignment = .center
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
      }()
    
    lazy var currentImage: UIImageView = {
        let contentView = UIImageView()
        contentView.image = UIImage(systemName: "house")
        contentView.translatesAutoresizingMaskIntoConstraints = false
        return contentView
      }()
    
    override init(frame: CGRect) {
//    self.currentImage = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height))
//    self.attributeTitle = UILabel(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height))
    super.init(frame: frame)
    let tapGesture = UITapGestureRecognizer(target: self, action: #selector(labelTapped))
    addGestureRecognizer(tapGesture)
    setupView()
    
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

    @objc func labelTapped(){
        print("Hello")
        sendActions(for: .touchUpInside)
    }

  private func setupView() {
    self.addSubview(attributedTitle)
    self.addSubview(currentImage)
  }

    private func setUpLayout(){
        NSLayoutConstraint.activate([
            currentImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            currentImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            currentImage.topAnchor.constraint(equalTo: topAnchor),
            currentImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            
            attributedTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            attributedTitle.trailingAnchor.constraint(equalTo: trailingAnchor),
            attributedTitle.topAnchor.constraint(equalTo: topAnchor),
            attributedTitle.bottomAnchor.constraint(equalTo: bottomAnchor)
            
            
            
        ])
    }
    override class var requiresConstraintBasedLayout: Bool {
        return true
    }
}
