//
//  UIView+tagTests.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

@testable import DHDeclarable
import XCTest

class UIView_tagTests: XCTestCase {
    func testTag() {
        let viewWithTag = UIView().tag(42)
        XCTAssertEqual(viewWithTag.tag, 42)
    }
}
