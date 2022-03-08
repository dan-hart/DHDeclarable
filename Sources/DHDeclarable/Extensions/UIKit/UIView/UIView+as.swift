//
//  UIView+as.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
import UIKit

extension UIView {
    @objc var asLabel: DHDLabel? {
        self as? DHDLabel
    }
    
    @objc var asStack: DHDStack? {
        self as? DHDStack
    }
    
    @objc var asScrollView: DHDScrollView? {
        self as? DHDScrollView
    }
}
