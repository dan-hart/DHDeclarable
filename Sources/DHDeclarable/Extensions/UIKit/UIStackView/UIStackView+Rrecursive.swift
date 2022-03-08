//
//  UIStackView+Recursive.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
import UIKit

public extension UIStackView {
    /// Recursive method that returns the arranged subviews
    /// - Parameter includingSelf: should this view be a part of the returned array
    /// - Returns: an array of views
    func arrangedSubviews(includingStackViews: Bool) -> [UIView] {
        var subviews = [UIView]()

        if includingStackViews {
            subviews.append(self)
        }

        for arrangedSubview in arrangedSubviews {
            // If there is a stack view or scrollable view contained within, search it, then continue until base case is reached
            if let stackView = arrangedSubview as? UIStackView {
                subviews.append(contentsOf: stackView.arrangedSubviews(includingStackViews: includingStackViews))
                continue
            }
            if let scrollable = arrangedSubview as? DHDScrollView {
                subviews.append(contentsOf: scrollable.stack.arrangedSubviews(includingStackViews: includingStackViews))
                continue
            }

            subviews.append(arrangedSubview)
        }

        return subviews
    }

    /// Recursively search this stack for accessibility identifiers
    /// - Returns: an array of strings of all the identifiers
    func identifiers(includingStackViews: Bool) -> [String] {
        var identifiers = [String]()

        if let identifier = accessibilityIdentifier, includingStackViews {
            identifiers.append(identifier)
        }

        for arrangedSubview in arrangedSubviews {
            // If there is a stack view or scrollable view contained within, search it, then continue until base case is reached
            if let stackView = arrangedSubview as? UIStackView {
                identifiers.append(contentsOf: stackView.identifiers(includingStackViews: includingStackViews))
                continue
            }
            if let scrollable = arrangedSubview as? DHDScrollView {
                identifiers.append(contentsOf: scrollable.stack.identifiers(includingStackViews: includingStackViews))
                continue
            }

            if let identifier = arrangedSubview.accessibilityIdentifier {
                identifiers.append(identifier)
            }
        }

        return identifiers
    }
    
    /// Recursively search arranged subviews and any stack views arranged subviews for the given type and
    /// - Parameter type: the given type
    /// - Returns: an array of the subviews of the given type
    func find<T>(_ type: T) -> [T] {
        var subviewsOfType = [T]()
        for arrangedSubview in arrangedSubviews {
            // If there is a stack view or scrollable view contained within, search it, then continue until base case is reached
            if let stackView = arrangedSubview as? UIStackView {
                subviewsOfType.append(contentsOf: stackView.find(type))
            }
            if let scrollable = arrangedSubview as? DHDScrollView {
                subviewsOfType.append(contentsOf: scrollable.stack.find(type))
            }

            if let arrangedSubviewOfType = arrangedSubview as? T {
                subviewsOfType.append(arrangedSubviewOfType)
            }
        }
        return subviewsOfType
    }
    
    var hierarchy: String {
        hierarchy(description: "\(UIStackView.self)")
    }
    
    /// Recursively describe this stack and it's subviews
    /// - Returns: a string of the description
    func hierarchy(description: String, level: Int = 0, stackIndex: Int = 0) -> String {
        var tab = ""
        for _ in 0 ..< level {
            tab += "\t"
        }

        if arrangedSubviews.isEmpty {
            return "\n\(tab)[\(stackIndex)] Empty \(description)"
        }

        var description = "\n\(tab)[\(stackIndex)] \(description) ["
        for (index, arrangedSubview) in arrangedSubviews.enumerated() {
            // If there is a stack view or scrollable view contained within, search it, then continue until base case is reached
            if let stackView = arrangedSubview as? UIStackView {
                description += "\t\(stackView.hierarchy(description: "\(type(of: arrangedSubview))", level: level + 1, stackIndex: index))"
                continue
            }
            if let scrollable = arrangedSubview as? DHDScrollView {
                description += "\t\(scrollable.stack.hierarchy(description: "\(DHDScrollView.self)", level: level + 1, stackIndex: index))"
                continue
            }

            if let _ = type(of: arrangedSubview) as? DHDStringRepresentable.Type {
                let stringDescription = (arrangedSubview as? DHDStringRepresentable)?.stringRepresentation ?? ""
                description += "\n\t\(tab)[\(index)] \(type(of: arrangedSubview)) \(stringDescription.inQuotes)"
                continue
            }
            
            if let identifier = arrangedSubview.accessibilityIdentifier {
                description += "\n\t\(tab)[\(index)] \(type(of: arrangedSubview)) \(identifier.inQuotes)"
                continue
            }

            // Fallback on type name
            description += "\n\t\(tab)[\(index)] \(type(of: arrangedSubview))"
        }
        description += "\n\(tab)]"

        return description
    }
}
