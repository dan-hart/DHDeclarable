//
//  UIView+addDividerTests.swift
//
//
//  Created by Dan Hart on 3/7/22.
//

#if canImport(UIKit)
    @testable import DHDeclarable
    import XCTest

    class UIView_addDividerTests: XCTestCase {
        func testAddDivider() {
            for position in UIView.DHDDividerPosition.allCases {
                let divider = UIView().addDivider(at: position, color: .gray)
                XCTAssertEqual(divider.backgroundColor, .gray)
                XCTAssertEqual(divider.constraints.count, 1)
            }
        }
    }
#endif
