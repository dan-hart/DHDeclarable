//
//  UIView+as.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
import UIKit

extension UIView {
    var asDHDView: DHDView? {
        self as? DHDView
    }
    
    var asLabel: DHDLabel? {
        self as? DHDLabel
    }
    
    var asStack: DHDStack? {
        self as? DHDStack
    }
}
