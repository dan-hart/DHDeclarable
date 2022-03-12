//
//  UIView+tag.swift
//
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
#if canImport(UIKit)
    import UIKit

    public extension UIView {
        /// Set the `tag` of this view
        /// - Parameter tag: an `Int` of a tag
        /// - Returns: this view
        @discardableResult func tagged(_ tag: Int) -> Self {
            declaredWith { view in
                view.tag = tag
            }
        }
    }
#endif
