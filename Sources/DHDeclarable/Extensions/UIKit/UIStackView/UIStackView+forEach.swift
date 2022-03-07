//
//  UIStackView+forEach.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
import UIKit

public extension UIStackView {
    enum DividerStyle: CaseIterable {
        case innerOuter
        case inner
        case none
    }

    /// For each item in a given array, convert each element into a `UIView`, then add arranged subview
    /// - Parameters:
    ///   - array: the data source
    ///   - convertToView: how to format each element in the data source to a `UIView`
    @discardableResult
    func forEach<T>(_ array: [T], style: DividerStyle = .innerOuter, convertToView: @escaping (T) -> UIView) -> Self {
        forEach(array, style: style) { _, element in
            self.addArrangedSubview(convertToView(element))
        }
    }

    /// For each item in a given array, call a completion to handle each index & element
    /// - Parameters:
    ///   - array: the data source
    ///   - completion: index + element
    @discardableResult
    func forEach<T>(_ array: [T], style: DividerStyle = .innerOuter, completion: @escaping (Int, T) -> Void) -> Self {
        switch style {
        case .innerOuter:
            addArrangedSubview(DHDView.divider)
        case .inner, .none:
            break
        }

        for (index, element) in array.enumerated() {
            completion(index, element)

            // Checking for the index + 1 != array.count for .inner, so we don't add a divider after the very last element
            if (style == .inner && (index + 1) != array.count) || style == .innerOuter {
                addArrangedSubview(DHDView.divider)
            }
        }
        return self
    }
}
