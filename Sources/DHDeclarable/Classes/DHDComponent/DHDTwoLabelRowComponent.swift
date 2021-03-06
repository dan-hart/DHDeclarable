//
//  DHDTwoLabelRowComponent.swift
//
//
//  Created by Dan Hart on 3/8/22.
//

import Foundation
#if canImport(UIKit)
    import UIKit

    /// Two labels hugging the leading and trailing edge of the view
    open class DHDTwoLabelRowComponent: DHDStackViewComponent {
        // MARK: - Lifecycle
        // MARK: - Initialization

        /// Create this view
        /// - Parameters:
        ///   - leadingText: the text to assign to the leading label
        ///   - trailingText: the text to assign to the trailing label
        public convenience init(leadingText: String, trailingText: String) {
            self.init()

            leadingLabel = DHDLabel(leadingText)
            trailingLabel = DHDLabel(trailingText)

            reloadView()
        }

        // MARK: - Public
        // MARK: - Properties

        public var leadingLabel: DHDLabel? {
            didSet {
                reloadView()
            }
        }

        public var trailingLabel: DHDLabel? {
            didSet {
                reloadView()
            }
        }

        // MARK: - Private
        // MARK: - Methods

        /// Remove all the subviews, and re-add both labels
        private func reloadView() {
            removeAllArrangedSubviews()

            axis = .horizontal
            distribution = .equalSpacing
            alignment = .center

            add(arrangedSubviews: [
                leadingLabel,
                trailingLabel?.alignment(.right),
            ])
        }
    }
#endif
