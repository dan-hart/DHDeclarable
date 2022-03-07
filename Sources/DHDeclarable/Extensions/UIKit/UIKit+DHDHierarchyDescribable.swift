//
//  UIKit+DHDHierarchyDescribable.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
import UIKit

extension UILabel: DHDHierarchyDescribable {
    public var hierarchyDescription: String {
        text ?? ""
    }
}

extension UIButton: DHDHierarchyDescribable {
    public var hierarchyDescription: String {
        titleLabel?.text ?? ""
    }
}
