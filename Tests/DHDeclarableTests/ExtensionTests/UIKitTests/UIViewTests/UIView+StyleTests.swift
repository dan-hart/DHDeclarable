//
//  UIView+StyleTests.swift
//
//
//  Created by Dan Hart on 3/7/22.
//

#if canImport(UIKit)
    @testable import DHDeclarable
    import XCTest

    class UIView_StyleTests: XCTestCase {
        func testBackground() {
            let view = UIView().background(color: .red)
            XCTAssertEqual(view.backgroundColor, .red)
        }

        func testIdentified() {
            let view = UIView().identified("ID")
            XCTAssertEqual(view.accessibilityIdentifier, "ID")
        }

        func testMargin() {
            let view = UIView().margin(top: 1, right: 2, bottom: 3, left: 4)
            XCTAssertEqual(view.layoutMargins.top, 1)
            XCTAssertEqual(view.layoutMargins.right, 2)
            XCTAssertEqual(view.layoutMargins.bottom, 3)
            XCTAssertEqual(view.layoutMargins.left, 4)
        }

        func testAxisMargin() {
            let view = UIView().margin(horizontal: 10, vertical: 20)
            XCTAssertEqual(view.layoutMargins.top, 20)
            XCTAssertEqual(view.layoutMargins.right, 10)
            XCTAssertEqual(view.layoutMargins.bottom, 20)
            XCTAssertEqual(view.layoutMargins.left, 10)
        }
    }
#endif
