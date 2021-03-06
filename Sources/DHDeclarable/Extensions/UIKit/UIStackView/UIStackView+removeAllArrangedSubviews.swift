//
//  UIStackView+removeAllArrangedSubviews.swift
//
//
//  Created by Dan Hart on 3/8/22.
//

import Foundation
#if canImport(UIKit)
    import UIKit

    public extension UIStackView {
        /// Clear all arranged subviews from this stack
        func removeAllArrangedSubviews() {
            let removedSubviews = arrangedSubviews.reduce([]) { allSubviews, subview -> [UIView] in
                self.removeArrangedSubview(subview)
                return allSubviews + [subview]
            }

            // Deactivate all constraints
            NSLayoutConstraint.deactivate(removedSubviews.flatMap { $0.constraints })

            // Remove the views from self
            removedSubviews.forEach { $0.removeFromSuperview() }
        }
    }
#endif
