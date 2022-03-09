//
//  ResettableLazyTests.swift
//
//
//  Created by Dan Hart on 3/8/22.
//

@testable import DHDeclarable
import XCTest

class ResettableLazyTests: XCTestCase {
    @ResettableLazy({
        "Hello"
    })
    var greeting: String?

    @ResettableLazy({
        "Goodbye"
    })
    var farewell: String

    func testResettableLazyOptional() {
        XCTAssertEqual(greeting, "Hello")
        greeting = nil
        XCTAssertEqual(greeting, "Hello")
    }

    func testResettableLazyNonOptional() {
        XCTAssertEqual(farewell, "Goodbye")
        farewell = ""
        XCTAssertEqual(farewell, "Goodbye")
    }
}
