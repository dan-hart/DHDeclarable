//
//  Collection+optionalTests.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

@testable import DHDeclarable
import XCTest

class Collection_optionalTests: XCTestCase {
    func testOptionalSuccess() {
        let array = ["One", "Two", "Three"]
        let two = array[optional: 1]
        XCTAssertEqual(two, "Two")
    }
    
    func testOptionalFailure() {
        let array = ["One", "Two", "Three"]
        let four = array[optional: 3]
        XCTAssertNil(four)
    }
}
