//
//  UILabel+Style.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
import UIKit

extension UILabel {
    // MARK: - Properties
    
    /// Set `adjustsFontForContentSizeCategory` to true
    public var adjustableFontSize: UILabel {
        declaredWith { label in
            label.adjustsFontForContentSizeCategory = true
        }
    }

    // MARK: - Styling
    
    /// Set text alignment to right
    public var alignedRight: UILabel {
        declaredWith { label in
            label.textAlignment = .right
        }
    }

    /// Set text alignment to left
    public var alignedLeft: UILabel {
        declaredWith { label in
            label.textAlignment = .left
        }
    }

    /// set `numberOfLines` to 0
    public var multiline: UILabel {
        declaredWith { label in
            label.numberOfLines = 0
        }
    }

    // MARK: - Methods
    
    /// set the font of this label
    @discardableResult public func font(_ font: UIFont) -> Self {
        declaredWith { label in
            label.font = font
        }
    }

    /// set the text color of this label
    @discardableResult public func textColor(_ color: UIColor) -> Self {
        declaredWith { label in
            label.textColor = color
        }
    }

    /// set the text alignment of this label
    @discardableResult public func alignment(_ alignment: NSTextAlignment) -> Self {
        declaredWith { label in
            label.textAlignment = alignment
        }
    }

    /// set the line spacing of this label
    @discardableResult public func lineSpacing(_ lineSpacing: CGFloat) -> Self {
        declaredWith { label in
            guard let textString = text else { return }

            let attributedString = NSMutableAttributedString(string: textString)

            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = lineSpacing
            paragraphStyle.alignment = self.textAlignment

            attributedString.addAttribute(.paragraphStyle,
                                          value: paragraphStyle,
                                          range: NSRange(location: 0, length: attributedString.length))

            attributedText = attributedString
        }
    }

    /// set the text property of this label
    @discardableResult public func declaredWith(text: String?) -> Self {
        declaredWith { label in
            label.text = text
        }
    }
}
