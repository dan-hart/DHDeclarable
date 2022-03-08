//
//  UIViewController+as.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
import UIKit

public extension UIViewController {
    var inNavigationController: UINavigationController {
        UINavigationController(rootViewController: self)
    }
}
