//
//  DHDVStack.swift
//
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
#if canImport(UIKit)
    import UIKit

    /// Vertical stack view
    /// **⚠️ warning**:
    /// make sure to call `declaredWithVerticalAxis()` if using a parameterless constructor
    open class DHDVStack: DHDStack {
        override public func setup(distribution: UIStackView.Distribution = .fill, spacing: CGFloat = 0, alignment: UIStackView.Alignment? = nil, tag: Int? = nil) {
            super.setup(distribution: distribution, spacing: spacing, alignment: alignment, tag: tag)

            axis = .vertical
        }

        /// Since the default axis of a `UIStackView` is `.horizontal` use this helper method to declare with a vertical axis.
        /// - Returns: this vertical stack
        public func declaredWithVerticalAxis() -> Self {
            declaredWith { instance in
                instance.axis = .vertical
            }
        }
    }
#endif
