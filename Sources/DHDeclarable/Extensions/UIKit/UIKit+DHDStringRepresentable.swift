//
//  UIKit+DHDStringRepresentable.swift
//
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
import UIKit

// MARK: - UILabel + DHDStringRepresentable
extension UILabel: DHDStringRepresentable {
    public var stringRepresentation: String {
        text ?? ""
    }
}

// MARK: - UIButton + DHDStringRepresentable
extension UIButton: DHDStringRepresentable {
    public var stringRepresentation: String {
        titleLabel?.text ?? ""
    }
}
