//
//  String+inQuotesTests.swift
//  
//
//  Created by Dan Hart on 3/8/22.
//

@testable import DHDeclarable
import XCTest

class String_inQuotesTests: XCTestCase {
    func testInQuotes() {
        XCTAssertEqual("Time for business, an hour for fun".inQuotes, "\"Time for business, an hour for fun\"")
    }
}
