//
//  DHDLabel.swift
//
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
#if canImport(UIKit)
    import UIKit

    /// Connivence object for `UILabel`
    open class DHDLabel: UILabel {
        public convenience init(font: UIFont?,
                                textColor: UIColor?,
                                alignment: NSTextAlignment?,
                                text: String?,
                                lineLimit: Int?,
                                adjustsFontForContentSizeCategory: Bool?) {
            self.init()

            if let font = font {
                self.font = font
            } else {
                self.font = UIFont.preferredFont(forTextStyle: .body)
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

        /// Create a `DHDLabel` with a font and some text
        /// - Parameters:
        ///   - text: a string of text
        ///   - font: the `UIFont` of the label
        public convenience init(_ text: String?,
                                font: UIFont? = UIFont.preferredFont(forTextStyle: .body)) {
            self.init(font: font,
                      textColor: nil,
                      alignment: .left,
                      text: text,
                      lineLimit: 0,
                      adjustsFontForContentSizeCategory: true)
        }

        /// Create a `DHDLabel` with some text
        /// - Parameter text: a string of text
        public convenience init(_ text: String?) {
            self.init(font: UIFont.preferredFont(forTextStyle: .body),
                      textColor: nil,
                      alignment: .left,
                      text: text,
                      lineLimit: 0,
                      adjustsFontForContentSizeCategory: true)
        }
    }
#endif
