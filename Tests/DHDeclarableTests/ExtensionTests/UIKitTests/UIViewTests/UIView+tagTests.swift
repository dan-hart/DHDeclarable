//
//  UIView+tagTests.swift
//
//
//  Created by Dan Hart on 3/7/22.
//

#if canImport(UIKit)
    @testable import DHDeclarable
    import XCTest

    class UIView_tagTests: XCTestCase {
        func testTag() {
            let viewWithTag = UIView().tagged(42)
            XCTAssertEqual(viewWithTag.tag, 42)
        }
    }
#endif
