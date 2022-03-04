//
//  UIView+rounded.swift
//  
//
//  Created by Dan Hart on 3/4/22.
//

import Foundation
import UIKit

extension UIView {
    var cornerRadius: CGFloat {
        get {
            layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @discardableResult func rounded(by radius: CGFloat) -> Self {
        declaredWith { view in
            view.cornerRadius = radius
        }
    }
}
