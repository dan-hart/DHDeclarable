//
//  DHDView+spacer.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
import UIKit

public extension DHDView {
    @discardableResult static func spacer(vertical height: CGFloat) -> DHDView {
        DHDView().declaredWith { view in
            view.heightAnchor.constraint(equalToConstant: height).isActive = true
            view.accessibilityIdentifier = DHDIdentifiers.spacer
        }
    }

    @discardableResult static func spacer(horizontal width: CGFloat) -> DHDView {
        DHDView().declaredWith { view in
            view.widthAnchor.constraint(equalToConstant: width).isActive = true
            view.accessibilityIdentifier = DHDIdentifiers.spacer
        }
    }
}
