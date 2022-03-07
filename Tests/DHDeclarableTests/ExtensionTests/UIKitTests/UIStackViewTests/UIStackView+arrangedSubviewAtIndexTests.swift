//
//  UIStackView+arrangedSubviewAtIndexTests.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

@testable import DHDeclarable
import XCTest

class UIStackView_arrangedSubviewAtIndexTests: XCTestCase {
    func testSubviewExists() {
        let stack = UIStackView().add(arrangedSubviews: [
            UIView().tagged(42)
        ])
        let subviewByIndex = stack.arrangedSubview(at: 0)
        XCTAssertNotNil(subviewByIndex)
        XCTAssertEqual(subviewByIndex?.tag, 42)
    }
    
    func testSubviewNil() {
        let stack = UIStackView()
        let nilSubview = stack.arrangedSubview(at: 0)
        XCTAssertNil(nilSubview)
    }
}
