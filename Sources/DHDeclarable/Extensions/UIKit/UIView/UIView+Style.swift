//
//  UIView+Style.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
import UIKit

public extension UIView {
    @discardableResult func background(color: UIColor?) -> Self {
        declaredWith { view in
            view.backgroundColor = color
        }
    }

    @discardableResult func identified(_ value: String) -> Self {
        declaredWith { view in
            view.accessibilityIdentifier = value
        }
    }

    @discardableResult func margin(horizontal: CGFloat, vertical: CGFloat) -> Self {
        margin(top: vertical, right: horizontal, bottom: vertical, left: horizontal)
    }

    @discardableResult func margin(top: CGFloat, right: CGFloat, bottom: CGFloat, left: CGFloat) -> Self {
        declaredWith { view in
            view.layoutMargins = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
        }
    }
}
