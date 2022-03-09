//
//  File.swift
//  
//
//  Created by Dan Hart on 3/8/22.
//

import Foundation

public extension String {
    /// Convert this string to a `DHDLabel`
    var asLabel: DHDLabel {
        DHDLabel(self)
    }
}
