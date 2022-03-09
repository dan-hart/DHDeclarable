//
//  UIStackView+Layout.swift
//
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
import UIKit

public extension UIStackView {
    // MARK: - Properties

    /// Set this Stack View's `isLayoutMarginsRelativeArrangement` to true
    var layoutMarginRelative: Self {
        declaredWith { stack in
            stack.isLayoutMarginsRelativeArrangement = true
        }
    }

    // MARK: - Functions

    /// Set the axis of this stack view to `horizontal` and set the spacing
    /// - Parameter spacing: number to describe the spacing between arranged subviews
    /// - Returns: this stack view
    @discardableResult func horizontal(spacing: CGFloat = 0) -> Self {
        declaredWith { horizontalStackView in
            horizontalStackView.axis = .horizontal
            horizontalStackView.spacing = spacing
        }
    }

    /// Set the axis of this stack view to `vertical` and set the spacing
    /// - Parameter spacing: number to describe the spacing between arranged subviews
    /// - Returns: this stack view
    @discardableResult func vertical(spacing: CGFloat = 0) -> Self {
        declaredWith { verticalStackView in
            verticalStackView.axis = .vertical
            verticalStackView.spacing = spacing
        }
    }

    /// Set the spacing property of this stack view
    /// - Parameter amount: the number to describe the spacing between arranged subviews
    /// - Returns: this stack view
    @discardableResult func spacing(_ amount: CGFloat) -> Self {
        declaredWith { stack in
            stack.spacing = amount
        }
    }

    /// Set the distribution of this stack view
    /// - Parameter style: the distribution style
    /// - Returns: this stack view
    @discardableResult func distribution(_ style: Distribution) -> Self {
        declaredWith { stack in
            stack.distribution = style
        }
    }

    /// Add an array of optional views to this stack view as arranged subviews, skipping nil views
    /// - Parameter arrangedSubviews: the views to add as arranged subviews
    /// - Returns: this stack view
    @discardableResult func add(arrangedSubviews: [UIView?]) -> Self {
        declaredWith { stack in
            for subview in arrangedSubviews {
                guard let view = subview else { continue }
                stack.addArrangedSubview(view)
            }
        }
    }

    @discardableResult func add(if condition: Bool, arrangedSubviews: [UIView?]) -> Self {
        if !condition { return self }

        return add(arrangedSubviews: arrangedSubviews)
    }
}
