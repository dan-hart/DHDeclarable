//
//  DHDZStackTests.swift
//  
//
//  Created by Dan Hart on 3/8/22.
//

@testable import DHDeclarable
import XCTest

class DHDZStackTests: XCTestCase {
    func testInit() {
        let zStack = DHDZStack {[
            DHDLabel("Hello"),
            nil,
            DHDLabel("Hello"),
        ]}
        XCTAssertEqual(zStack.asStack?.arrangedSubviews.count, 2)
    }
}
