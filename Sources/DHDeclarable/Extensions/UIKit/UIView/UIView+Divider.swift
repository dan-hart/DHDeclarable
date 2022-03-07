//
//  UIView+Divider.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
import UIKit

public extension UIView {
    enum DividerPosition {
        case top
        case bottom
        case left
        case right
    }

    @discardableResult func addDivider(at position: DividerPosition, color: UIColor, weight: CGFloat = 1.0 / UIScreen.main.scale, insets: UIEdgeInsets = .zero) -> UIView {
        let view = UIView()
        view.backgroundColor = color
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)

        switch position {
        case .top:
            view.topAnchor.constraint(equalTo: topAnchor, constant: insets.top).isActive = true
            view.leftAnchor.constraint(equalTo: leftAnchor, constant: insets.left).isActive = true
            view.rightAnchor.constraint(equalTo: rightAnchor, constant: -insets.right).isActive = true
            view.heightAnchor.constraint(equalToConstant: weight).isActive = true

        case .bottom:
            view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -insets.bottom).isActive = true
            view.leftAnchor.constraint(equalTo: leftAnchor, constant: insets.left).isActive = true
            view.rightAnchor.constraint(equalTo: rightAnchor, constant: -insets.right).isActive = true
            view.heightAnchor.constraint(equalToConstant: weight).isActive = true

        case .left:
            view.topAnchor.constraint(equalTo: topAnchor, constant: insets.top).isActive = true
            view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -insets.bottom).isActive = true
            view.leftAnchor.constraint(equalTo: leftAnchor, constant: insets.left).isActive = true
            view.widthAnchor.constraint(equalToConstant: weight).isActive = true

        case .right:
            view.topAnchor.constraint(equalTo: topAnchor, constant: insets.top).isActive = true
            view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -insets.bottom).isActive = true
            view.rightAnchor.constraint(equalTo: rightAnchor, constant: -insets.right).isActive = true
            view.widthAnchor.constraint(equalToConstant: weight).isActive = true
        }

        return view
    }
}
