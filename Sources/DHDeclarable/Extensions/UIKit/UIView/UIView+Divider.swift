//
//  UIView+Divider.swift
//
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
#if canImport(UIKit)
    import UIKit

    public extension UIView {
        /// Cases for which side of a view to add the divider to
        enum DHDDividerPosition: CaseIterable {
            case top
            case bottom
            case left
            case right
        }

        /// Create a horizontal line at the specified position, color, weight, using the insets
        /// - Returns: a `UIView` as the divider
        @discardableResult func addDivider(at position: DHDDividerPosition, color: UIColor, weight: CGFloat = 1.0 / UIScreen.main.scale, insets: UIEdgeInsets = .zero) -> UIView {
            let view = UIView()
            view.backgroundColor = color
            view.translatesAutoresizingMaskIntoConstraints = false
            addSubview(view)

            switch position {
            case .top:
                NSLayoutConstraint.activate([
                    view.topAnchor.constraint(equalTo: topAnchor, constant: insets.top),
                    view.leftAnchor.constraint(equalTo: leftAnchor, constant: insets.left),
                    view.rightAnchor.constraint(equalTo: rightAnchor, constant: -insets.right),
                    view.heightAnchor.constraint(equalToConstant: weight)
                ])
                
            case .bottom:
                NSLayoutConstraint.activate([
                    view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -insets.bottom),
                    view.leftAnchor.constraint(equalTo: leftAnchor, constant: insets.left),
                    view.rightAnchor.constraint(equalTo: rightAnchor, constant: -insets.right),
                    view.heightAnchor.constraint(equalToConstant: weight)
                ])
                
            case .left:
                NSLayoutConstraint.activate([
                    view.topAnchor.constraint(equalTo: topAnchor, constant: insets.top),
                    view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -insets.bottom),
                    view.leftAnchor.constraint(equalTo: leftAnchor, constant: insets.left),
                    view.widthAnchor.constraint(equalToConstant: weight)
                ])
                
            case .right:
                NSLayoutConstraint.activate([
                    view.topAnchor.constraint(equalTo: topAnchor, constant: insets.top),
                    view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -insets.bottom),
                    view.rightAnchor.constraint(equalTo: rightAnchor, constant: -insets.right),
                    view.widthAnchor.constraint(equalToConstant: weight)
                ])
            }

            return view
        }
    }
#endif
