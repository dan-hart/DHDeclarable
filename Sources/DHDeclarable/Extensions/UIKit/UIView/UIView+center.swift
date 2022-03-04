//
//  UIView+center.swift
//  
//
//  Created by Dan Hart on 3/4/22.
//

import Foundation
import UIKit

extension UIView {
    /// Put this view in the center of a containing view
    /// - Parameters:
    ///   - to: the containing view, make sure this view is a subview
    ///   - heightLessThanOrEqualToConstant: .
    ///   - widthLessThanOrEqualToConstant: .
    func center(to: UIView, heightLessThanOrEqualToConstant: CGFloat, widthLessThanOrEqualToConstant: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            centerXAnchor.constraint(equalTo: to.centerXAnchor),
            centerYAnchor.constraint(equalTo: to.centerYAnchor),
            
            heightAnchor.constraint(greaterThanOrEqualToConstant: 0),
            widthAnchor.constraint(greaterThanOrEqualToConstant: 0),
            
            heightAnchor.constraint(lessThanOrEqualToConstant: heightLessThanOrEqualToConstant),
            widthAnchor.constraint(lessThanOrEqualToConstant: widthLessThanOrEqualToConstant),
        ])
    }
}
