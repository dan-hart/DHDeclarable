//
//  UIView+rounded.swift
//
//
//  Created by Dan Hart on 3/4/22.
//

import Foundation
#if canImport(UIKit)
    import UIKit

    public extension UIView {
        /// Access the layer's corner radius with this helper, also properly set `masksToBounds`
        var cornerRadius: CGFloat {
            get {
                layer.cornerRadius
            }
            set {
                layer.cornerRadius = newValue
                layer.masksToBounds = newValue > 0
            }
        }

        /// Set the corner radius of this view
        /// - Parameter radius: how much to round the corner
        /// - Returns: this view
        @discardableResult func rounded(by radius: CGFloat) -> Self {
            declaredWith { view in
                view.cornerRadius = radius
            }
        }
    }
#endif
