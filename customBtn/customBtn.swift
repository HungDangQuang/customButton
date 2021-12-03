//
//  customBtn.swift
//  customBtn
//
//  Created by QUANG HUNG on 02/Dec/2021.
//

import Foundation
import UIKit

class customButton: UIControl {

  override init(frame: CGRect) {
    super.init(frame: frame)
    setupView()
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
      let tapGesture = UITapGestureRecognizer(target: self, action: #selector(labelTapped))
      addGestureRecognizer(tapGesture)
    setupView()
  }

    @objc func labelTapped(){
        print("Hello")
        sendActions(for: .touchUpInside)
    }

  private func setupView() {
    backgroundColor = .red
    isUserInteractionEnabled = true

  }
}
