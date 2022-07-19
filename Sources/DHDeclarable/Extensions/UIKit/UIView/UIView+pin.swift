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
            NSLayoutConstraint.activate([
                topAnchor.constraint(equalTo: superView.topAnchor, constant: withVerticalPadding),
                leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: withHorizontalPadding),
                trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: withHorizontalPadding * -1),
                bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: withVerticalPadding * -1)
            ])
        }
    }
#endif
