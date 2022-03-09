//
//  DHDStringRepresentable.swift
//
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation

/// Conform to this protocol to show a string value when calling `.hierarchy` on a `UIStackView`
public protocol DHDStringRepresentable {
    /// This value is shown in the `.hierarchy` property
    /// Provide useful information for showing in a view hierarchy
    var stringRepresentation: String { get }
}
