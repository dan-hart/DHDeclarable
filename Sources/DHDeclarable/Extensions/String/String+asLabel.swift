//
//  File.swift
//
//
//  Created by Dan Hart on 3/8/22.
//

import Foundation
#if canImport(UIKit) // DHDLabel depends on UIKit
    public extension String {
        /// Convert this string to a `DHDLabel`
        var asLabel: DHDLabel {
            DHDLabel(self)
        }
    }
#endif
