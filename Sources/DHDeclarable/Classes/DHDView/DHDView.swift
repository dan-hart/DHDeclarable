//
//  DHDView.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
import UIKit

open class DHDView: UIView {
    public static var spacer: DHDView {
        DHDView().declaredWith { view in
            view.setContentHuggingPriority(.required, for: .horizontal)
            view.setContentHuggingPriority(.required, for: .vertical)
            view.accessibilityIdentifier = DHDIdentifiers.spacer
        }
    }
    
    public static var divider: DHDView {
        DHDView().declaredWith { view in
            view.addDivider(at: .top, color: .gray)
            view.accessibilityIdentifier = DHDIdentifiers.divider
        }
    }
}