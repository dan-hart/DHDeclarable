//
//  UILabel+StyleTests.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

@testable import DHDeclarable
import UIKit
import XCTest

class UILabel_StyleTests: XCTestCase {
    func testAdjustableFontSize() {
        let label = UILabel().adjustableFontSize
        XCTAssertTrue(label.adjustsFontForContentSizeCategory)
    }
    
    func testAlignedRight() {
        let label = UILabel().alignedRight
        XCTAssertEqual(label.textAlignment, .right)
    }
    
    func testAlignedLeft() {
        let label = UILabel().alignedLeft
        XCTAssertEqual(label.textAlignment, .left)
    }
    
    func testMultiline() {
        let label = UILabel().multiline
        XCTAssertEqual(label.numberOfLines, 0)
    }
    
    func testFont() {
        let label = UILabel().font(.preferredFont(forTextStyle: .body))
        XCTAssertEqual(label.font, .preferredFont(forTextStyle: .body))
    }
    
    func testTextStyle() {
        let label = "Hello".asLabel.textStyle(.title1)
        XCTAssertEqual(label.font, .preferredFont(forTextStyle: .title1))
    }
    
    func testTextColor() {
        let label = UILabel().textColor(.red)
        XCTAssertEqual(label.textColor, .red)
    }
    
    func testAlignment() {
        let label = UILabel().alignment(.justified)
        XCTAssertEqual(label.textAlignment, .justified)
    }
    
    func testLineSpacing() {
        let label = UILabel()
            .declaredWith(text: "This \n is \n a \n multiline \n string")
            .lineSpacing(20)
            .alignedRight
        
        var didAssertAttribute = false
        label.attributedText?.enumerateAttributes(
            in: NSRange(location: 0,
                        length: label.attributedText?.length ?? 0),
            options: .longestEffectiveRangeNotRequired,
            using: { attributeDictionary, range, unsafePointer in
            for attribute in attributeDictionary where attribute.key == .paragraphStyle {
                let paragraphStyle = attribute.value as? NSMutableParagraphStyle
                XCTAssertEqual(paragraphStyle?.lineSpacing, 20)
                XCTAssertEqual(paragraphStyle?.alignment, .right)
                didAssertAttribute = true
            }
        })
        XCTAssertTrue(didAssertAttribute)
    }
    
    func testText() {
        let label = UILabel().declaredWith(text: "Hello, World!")
        XCTAssertEqual(label.text, "Hello, World!")
    }
}
