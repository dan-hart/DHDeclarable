//
//  DHDView+divider.swift
//
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
#if canImport(UIKit)
    import UIKit

    public extension DHDView {
        /// create a horizontal line of a specified color
        /// - Parameter color: UIColor
        /// - Returns: the divider
        static func divider(_ color: UIColor) -> DHDView {
            DHDView().declaredWith { view in
                view.addDivider(at: .top, color: color)
                view.accessibilityIdentifier = DHDIdentifier.divider
            }
        }
    }
#endif
