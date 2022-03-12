//
//  UIStackView+removeAllArrangedSubviewsTests.swift
//
//
//  Created by Dan Hart on 3/8/22.
//

#if canImport(UIKit)
    import DHDeclarable
    import XCTest

    class UIStackView_removeAllArrangedSubviewsTests: XCTestCase {
        func testRemoveAllArrangedSubviews() {
            let stack = DHDVStack {
                ["Hello".asLabel]
            }
            XCTAssertEqual(stack.arrangedSubviews.count, 1)
            stack.removeAllArrangedSubviews()
            XCTAssertEqual(stack.arrangedSubviews.count, 0)
        }
    }
#endif
