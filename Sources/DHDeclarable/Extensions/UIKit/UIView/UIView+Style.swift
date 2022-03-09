//
//  UIView+Style.swift
//
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
import UIKit

public extension UIView {
    /// Set the background color of this view
    /// - Parameter color: optional `UIColor`
    /// - Returns: this view
    @discardableResult func background(color: UIColor?) -> Self {
        declaredWith { view in
            view.backgroundColor = color
        }
    }

    /// Set the `.accessibilityIdentifier` of this view
    /// - Parameter value: the `String` value to set
    /// - Returns: this view
    @discardableResult func identified(_ value: String) -> Self {
        declaredWith { view in
            view.accessibilityIdentifier = value
        }
    }

    /// Set the margin of this view
    /// - Parameters:
    ///   - horizontal: the `CGFloat` of the width
    ///   - vertical: the `CGFloat` of the height
    /// - Returns: this view
    @discardableResult func margin(horizontal: CGFloat, vertical: CGFloat) -> Self {
        margin(top: vertical, right: horizontal, bottom: vertical, left: horizontal)
    }

    /// Set the margin of each side of this view
    /// - Parameters:
    ///   - top: the `CGFloat` of the top
    ///   - right: the `CGFloat` of the right
    ///   - bottom: the `CGFloat` of the bottom
    ///   - left: the `CGFloat` of the left
    /// - Returns: this view
    @discardableResult func margin(top: CGFloat, right: CGFloat, bottom: CGFloat, left: CGFloat) -> Self {
        declaredWith { view in
            view.layoutMargins = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
        }
    }
}
