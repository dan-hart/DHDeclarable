//
//  DHDHStack.swift
//
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
#if canImport(UIKit)
    import UIKit

    /// Horizontal stack view
    open class DHDHStack: DHDStack {
        override public func setup(distribution: UIStackView.Distribution = .fill, spacing: CGFloat = 0, alignment: UIStackView.Alignment? = nil, tag: Int? = nil) {
            super.setup(distribution: distribution, spacing: spacing, alignment: alignment, tag: tag)

            axis = .horizontal
        }
    }
#endif
