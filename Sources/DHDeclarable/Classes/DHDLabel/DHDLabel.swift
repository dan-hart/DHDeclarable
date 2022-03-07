//
//  DHDLabel.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
import UIKit

/// Connivence object for `UILabel`
open class DHDLabel: UILabel {
    convenience init(font: UIFont?,
                     textColor: UIColor?,
                     alignment: NSTextAlignment?,
                     text: String?,
                     lineLimit: Int?,
                     adjustsFontForContentSizeCategory: Bool?) {
        self.init()

        if let font = font {
            self.font = font
        }
        if let textColor = textColor {
            self.textColor = textColor
        }
        if let unwrappedAlignment = alignment {
            textAlignment = unwrappedAlignment
        }
        self.text = text
        if let lines = lineLimit {
            numberOfLines = lines
        }
        self.adjustsFontForContentSizeCategory = adjustsFontForContentSizeCategory ?? false
    }

    convenience init(font: UIFont? = nil,
                     _ text: String? = nil) {
        self.init(font: font,
                  textColor: nil,
                  alignment: .left,
                  text: text,
                  lineLimit: 0,
                  adjustsFontForContentSizeCategory: true)
    }

    convenience init(_ text: String? = nil) {
        self.init(font: nil,
                  textColor: nil,
                  alignment: .left,
                  text: text,
                  lineLimit: 0,
                  adjustsFontForContentSizeCategory: true)
    }
}
