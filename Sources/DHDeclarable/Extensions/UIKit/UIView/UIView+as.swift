//
//  UIView+as.swift
//
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
#if canImport(UIKit)
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
#endif
