//
//  UIView+pin.swift
//  
//
//  Created by Dan Hart on 3/4/22.
//

import Foundation
import UIKit

public extension UIView {
    /// Use constraints to pin this to a superview
    /// - Parameter superView: .
    func pin(to superView: UIView) {
        pin(to: superView, withVerticalPadding: 0, withHorizontalPadding: 0)
    }
    
    /// Use constraints to pin this to a superview
    /// - Parameters:
    ///   - superView: .
    ///   - withVerticalPadding: .
    ///   - withHorizontalPadding: .
    func pin(to superView: UIView, withVerticalPadding: CGFloat, withHorizontalPadding: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superView.topAnchor, constant: withVerticalPadding).isActive = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: withHorizontalPadding)
            .isActive = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: withHorizontalPadding * -1)
            .isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: withVerticalPadding * -1)
            .isActive = true
    }
}
