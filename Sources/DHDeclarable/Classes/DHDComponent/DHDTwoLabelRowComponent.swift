//
//  DHDTwoLabelRowComponent.swift
//  
//
//  Created by Dan Hart on 3/8/22.
//

import Foundation
import UIKit

/// Two labels hugging the leading and trailing edge of the view
open class DHDTwoLabelRowComponent: DHDStackViewComponent {
    // MARK: - Properties
    @ResettableLazy({
        "".asLabel
    })
    public var leadingLabel: DHDLabel {
        didSet {
            reloadView()
        }
    }

    @ResettableLazy({
        "".asLabel
    })
    public var trailingLabel: DHDLabel {
        didSet {
            reloadView()
        }
    }

    // MARK: - Initialization
    public convenience init(leadingText: String, trailingText: String) {
        self.init()

        leadingLabel.text = leadingText
        trailingLabel.text = trailingText

        reloadView()
    }

    // MARK: - Methods
    private func reloadView() {
        removeAllArrangedSubviews()

        axis = .horizontal
        distribution = .equalSpacing
        alignment = .center

        add(arrangedSubviews: [
            leadingLabel,
            trailingLabel.alignment(.right),
        ])
    }
}
