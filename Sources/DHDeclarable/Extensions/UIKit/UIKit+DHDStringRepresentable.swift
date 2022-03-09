//
//  UIKit+DHDStringRepresentable.swift
//
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
import UIKit

extension UILabel: DHDStringRepresentable {
    public var stringRepresentation: String {
        text ?? ""
    }
}

extension UIButton: DHDStringRepresentable {
    public var stringRepresentation: String {
        titleLabel?.text ?? ""
    }
}
