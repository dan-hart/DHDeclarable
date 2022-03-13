//
//  UIView+pin.swift
//
//
//  Created by Dan Hart on 3/4/22.
//

import Foundation
#if canImport(UIKit)
    import UIKit

    public extension UIView {
        /// Use constraints to pin this to a superview
        /// - Parameters:
        ///   - superView: .
        ///   - withVerticalPadding: .
        ///   - withHorizontalPadding: .
        func pin(to superView: UIView, withVerticalPadding: CGFloat = 0, withHorizontalPadding: CGFloat = 0) {
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
#endif
