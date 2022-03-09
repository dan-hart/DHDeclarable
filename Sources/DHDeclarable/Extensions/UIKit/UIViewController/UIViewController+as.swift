//
//  UIViewController+as.swift
//
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
import UIKit

public extension UIViewController {
    /// Put this view controller in the `rootViewController` of a `UINavigationController` and return it
    var inNavigationController: UINavigationController {
        UINavigationController(rootViewController: self)
    }
}
