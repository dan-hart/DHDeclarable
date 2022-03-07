//
//  DHDView+divider.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
import UIKit

public extension DHDView {
    static func divider(_ color: UIColor) -> DHDView {
        DHDView().declaredWith { view in
            view.addDivider(at: .top, color: color)
            view.accessibilityIdentifier = DHDIdentifiers.divider
        }
    }
}
