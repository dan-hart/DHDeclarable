//
//  UIStackView+LayoutTests.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

@testable import DHDeclarable
import XCTest

class UIStackView_LayoutTests: XCTestCase {
    func testLayoutMarginRelative() {
        let stack = UIStackView().layoutMarginRelative
        XCTAssertEqual(stack.isLayoutMarginsRelativeArrangement, true)
    }
    
    func testHorizontal() {
        let stack = UIStackView().horizontal(spacing: 10)
        XCTAssertEqual(stack.axis, .horizontal)
        XCTAssertEqual(stack.spacing, 10)
    }
    
    func testVertical() {
        let stack = UIStackView().vertical(spacing: 10)
        XCTAssertEqual(stack.axis, .vertical)
        XCTAssertEqual(stack.spacing, 10)
    }
    
    func testSpacing() {
        let stack = UIStackView().spacing(42)
        XCTAssertEqual(stack.spacing, 42)
    }
    
    func testDistribution() {
        let stack = UIStackView().distribution(.equalCentering)
        XCTAssertEqual(stack.distribution, .equalCentering)
    }
    
    func testAddArrangedSubviews() {
        let stack = UIStackView().add(arrangedSubviews: [
            UIView().tagged(45789),
            nil,
            UIView().tagged(42),
        ])
        XCTAssertEqual(stack.arrangedSubviews.count, 2)
        XCTAssertEqual(stack.arrangedSubview(at: 0)?.tag, 45789)
        XCTAssertEqual(stack.arrangedSubview(at: 1)?.tag, 42)
    }
    
    func testAddIfSuccess() {
        let stack = UIStackView().add(if: true, arrangedSubviews: [
            UIView()
        ])
        XCTAssertEqual(stack.arrangedSubviews.count, 1)
    }
    
    func testAddIfFailure() {
        let stack = UIStackView().add(if: false, arrangedSubviews: [
            UIView()
        ])
        XCTAssertEqual(stack.arrangedSubviews.count, 0)
    }
}
