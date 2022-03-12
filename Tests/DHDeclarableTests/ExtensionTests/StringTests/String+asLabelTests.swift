//
//  String+asLabelTests.swift
//
//
//  Created by Dan Hart on 3/8/22.
//

#if canImport(UIKit)
    @testable import DHDeclarable
    import XCTest

    class String_asLabelTests: XCTestCase {
        func testAsLabel() {
            let label = "Hello".asLabel
            XCTAssertEqual(label.text, "Hello")
        }
    }
#endif
