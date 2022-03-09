//
//  UIStackView+arrangedSubviewAtIndex.swift
//
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
import UIKit

public extension UIStackView {
    /// Retrieve an arranged subview at the specified index
    /// - Parameter index: the 0-based index of the arranged subview
    /// - Returns: the optional view at the specified index.
    func arrangedSubview(at index: Int) -> UIView? {
        arrangedSubviews[optional: index]
    }
}
