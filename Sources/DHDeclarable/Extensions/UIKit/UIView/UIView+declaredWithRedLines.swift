//
//  UIView+declaredWithRedLines.swift
//  
//
//  Created by Dan Hart on 3/4/22.
//

import Foundation
import UIKit

extension UIView {
    /// Add a border, corner radius, and light background color to inspect a view
    var declaredWithRedLines: UIView {
        declaredWith { view in
            view.layer.borderWidth = 1
            view.layer.cornerRadius = 2
            view.layer.borderColor = UIColor.red.withAlphaComponent(0.3).cgColor
            view.backgroundColor = UIColor.red.withAlphaComponent(0.1)
        }
    }
    
    /// Add a border, corner radius, and light background color to debug a view
    var inspect: UIView {
        declaredWithRedLines
    }
}
