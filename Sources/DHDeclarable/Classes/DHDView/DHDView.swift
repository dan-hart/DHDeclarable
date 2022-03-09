//
//  DHDView.swift
//
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
import UIKit

open class DHDView: UIView {
    /// A view that hugs the horizontal and vertical axis
    public static var spacer: DHDView {
        DHDView().declaredWith { view in
            view.setContentHuggingPriority(.required, for: .horizontal)
            view.setContentHuggingPriority(.required, for: .vertical)
            view.accessibilityIdentifier = DHDIdentifier.spacer
        }
    }

    /// A view that creates a gray horizontal line
    public static var divider: DHDView {
        DHDView().declaredWith { view in
            view.addDivider(at: .top, color: .gray)
            view.accessibilityIdentifier = DHDIdentifier.divider
        }
    }
}

extension DHDView: DHDStringRepresentable {
    public var stringRepresentation: String {
        if let identifier = accessibilityIdentifier {
            return identifier
        } else {
            return description
        }
    }
}
