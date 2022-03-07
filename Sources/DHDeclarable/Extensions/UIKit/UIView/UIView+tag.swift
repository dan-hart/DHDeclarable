//
//  UIView+tag.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
import UIKit

extension UIView {
    @discardableResult func tag(_ tag: Int) -> Self {
        declaredWith { view in
            view.tag = tag
        }
    }
}
