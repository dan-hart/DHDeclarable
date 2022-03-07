//
//  UIViewController+as.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
import UIKit

extension UIViewController {
    var asDHDViewController: DHDViewController? {
        self as? DHDViewController
    }
}
