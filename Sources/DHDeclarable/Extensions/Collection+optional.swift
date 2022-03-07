//
//  Collection+optional.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation

extension Collection {
    /// Returns the element at the specified index if it is within bounds, otherwise nil.
    subscript (optional index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
