//
//  UIView+centerTests.swift
//
//
//  Created by Dan Hart on 3/7/22.
//

@testable import DHDeclarable
import XCTest

class UIView_centerTests: XCTestCase {
    func testCenterHorizontally() {
        let label = DHDLabel("Hello")
        let centeredStack = label.centerHorizontally
        XCTAssertEqual(centeredStack.arrangedSubviews.count, 3)
        XCTAssertEqual(centeredStack.arrangedSubview(at: 0)?.accessibilityIdentifier, DHDIdentifier.spacer)
        XCTAssertEqual(centeredStack.arrangedSubview(at: 1)?.asLabel?.text, "Hello")
        XCTAssertEqual(centeredStack.arrangedSubview(at: 2)?.accessibilityIdentifier, DHDIdentifier.spacer)
    }
}
