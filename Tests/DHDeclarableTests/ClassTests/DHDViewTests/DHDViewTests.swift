//
//  DHDViewTests.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

@testable import DHDeclarable
import XCTest

class DHDViewTests: XCTestCase {
    // MARK: - Spacer
    func testSpacer() {
        let spacer = DHDView.spacer
        XCTAssertEqual(spacer.accessibilityIdentifier, DHDIdentifiers.spacer)
    }
    
    func testSpacerVertical() {
        let spacerVertical = DHDView.spacer(vertical: 10)
        XCTAssertEqual(spacerVertical.accessibilityIdentifier, DHDIdentifiers.spacer)
        XCTAssertEqual(spacerVertical.constraints.first?.constant, 10)
    }
    
    func testSpacerHorizontal() {
        let spacerHorizontal = DHDView.spacer(horizontal: 20)
        XCTAssertEqual(spacerHorizontal.accessibilityIdentifier, DHDIdentifiers.spacer)
        XCTAssertEqual(spacerHorizontal.constraints.first?.constant, 20)
    }
    
    // MARK: - Divider
    func testDivider() {
        let divider = DHDView.divider
        XCTAssertEqual(divider.accessibilityIdentifier, DHDIdentifiers.divider)
    }
    
    func testDividerColor() {
        let divider = DHDView.divider(.red)
        XCTAssertEqual(divider.subviews.first?.backgroundColor, .red)
        XCTAssertEqual(divider.accessibilityIdentifier, DHDIdentifiers.divider)
    }
}
