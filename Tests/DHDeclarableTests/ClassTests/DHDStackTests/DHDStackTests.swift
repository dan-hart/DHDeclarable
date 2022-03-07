//
//  DHDStackTests.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

@testable import DHDeclarable
import XCTest

class DHDStackTests: XCTestCase {
    // MARK: - DHDStack Tests
    func testDHDStackInit() {
        let stack = DHDStack()
        XCTAssertEqual(stack.axis, .horizontal)
        XCTAssertEqual(stack.distribution, .fill)
        XCTAssertEqual(stack.spacing, 0)
        XCTAssertEqual(stack.alignment, .fill)
        XCTAssertEqual(stack.tag, 0)
    }
    
    func testDHDStackSetup() {
        let stack = DHDStack()
        stack.setup(distribution: .equalCentering, spacing: 2, alignment: .leading, tag: 2)
        XCTAssertEqual(stack.axis, .horizontal)
        XCTAssertEqual(stack.distribution, .equalCentering)
        XCTAssertEqual(stack.spacing, 2)
        XCTAssertEqual(stack.alignment, .leading)
        XCTAssertEqual(stack.tag, 2)
    }
    
    // MARK: - DHDHStack Tests
    func testDHDHStackInit() {
        let hStack = DHDHStack()
        XCTAssertEqual(hStack.axis, .horizontal)
        XCTAssertEqual(hStack.distribution, .fill)
        XCTAssertEqual(hStack.spacing, 0)
        XCTAssertEqual(hStack.alignment, .fill)
        XCTAssertEqual(hStack.tag, 0)
    }
    
    func testDHDHStackConvenienceInit() {
        let hStack = DHDHStack(distribution: .equalCentering, spacing: 2, alignment: .leading, tag: 2)
        XCTAssertEqual(hStack.axis, .horizontal)
        XCTAssertEqual(hStack.distribution, .equalCentering)
        XCTAssertEqual(hStack.spacing, 2)
        XCTAssertEqual(hStack.alignment, .leading)
        XCTAssertEqual(hStack.tag, 2)
    }
    
    // MARK: - DHDVStack Tests
    func testDHDVStackInit() {
        let vStack = DHDVStack()
        XCTAssertEqual(vStack.axis, .vertical)
        XCTAssertEqual(vStack.distribution, .fill)
        XCTAssertEqual(vStack.spacing, 0)
        XCTAssertEqual(vStack.alignment, .fill)
        XCTAssertEqual(vStack.tag, 0)
    }
    
    func testDHDVStackConvenienceInit() {
        let vStack = DHDVStack(distribution: .equalCentering, spacing: 2, alignment: .leading, tag: 2)
        XCTAssertEqual(vStack.axis, .vertical)
        XCTAssertEqual(vStack.distribution, .equalCentering)
        XCTAssertEqual(vStack.spacing, 2)
        XCTAssertEqual(vStack.alignment, .leading)
        XCTAssertEqual(vStack.tag, 2)
    }
}
