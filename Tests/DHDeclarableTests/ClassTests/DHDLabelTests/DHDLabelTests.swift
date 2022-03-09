//
//  DHDLabelTests.swift
//
//
//  Created by Dan Hart on 3/7/22.
//

@testable import DHDeclarable
import XCTest

class DHDLabelTests: XCTestCase {
    func testInit() {
        let label = DHDLabel(font: nil, textColor: .red, alignment: .right, text: "Steve Jobs", lineLimit: 1, adjustsFontForContentSizeCategory: false)
        XCTAssertEqual(label.font, UIFont.preferredFont(forTextStyle: .body))
        XCTAssertEqual(label.textColor, .red)
        XCTAssertEqual(label.textAlignment, .right)
        XCTAssertEqual(label.text, "Steve Jobs")
        XCTAssertEqual(label.numberOfLines, 1)
        XCTAssertEqual(label.adjustsFontForContentSizeCategory, false)
    }

    func testFontInit() {
        let label = DHDLabel("Hello 1", font: nil)
        let textColor = label.textColor
        XCTAssertEqual(label.font, UIFont.preferredFont(forTextStyle: .body))
        XCTAssertEqual(label.textColor, textColor)
        XCTAssertEqual(label.textAlignment, .left)
        XCTAssertEqual(label.text, "Hello 1")
        XCTAssertEqual(label.numberOfLines, 0)
        XCTAssertEqual(label.adjustsFontForContentSizeCategory, true)
    }

    func testTextInit() {
        let label = DHDLabel("Hello 2")
        let textColor = label.textColor
        XCTAssertEqual(label.font, UIFont.preferredFont(forTextStyle: .body))
        XCTAssertEqual(label.textColor, textColor)
        XCTAssertEqual(label.textAlignment, .left)
        XCTAssertEqual(label.text, "Hello 2")
        XCTAssertEqual(label.numberOfLines, 0)
        XCTAssertEqual(label.adjustsFontForContentSizeCategory, true)
    }
}
