//
//  DHDStack.swift
//
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
#if canImport(UIKit)
    import UIKit

    /// A DHDeclarable wrapper for `UIStackView`
    open class DHDStack: UIStackView {
        // MARK: - Lifecycle
        public convenience init(distribution: Distribution = .fill, spacing: CGFloat = 0, alignment: Alignment? = nil, tag: Int? = nil) {
            self.init()

            setup(distribution: distribution, spacing: spacing, alignment: alignment, tag: tag)
        }

        public convenience init(_ byAddingArrangedSubviews: @escaping () -> [UIView?]) {
            self.init()
            add(arrangedSubviews: byAddingArrangedSubviews())
        }

        // MARK: - Public
        public func setup(distribution: Distribution = .fill, spacing: CGFloat = 0, alignment: Alignment? = nil, tag: Int? = nil) {
            self.distribution = distribution
            self.spacing = spacing
            if let unwrappedAlignment = alignment {
                self.alignment = unwrappedAlignment
            }
            if let unwrappedTag = tag {
                self.tag = unwrappedTag
            }
        }
    }
#endif
