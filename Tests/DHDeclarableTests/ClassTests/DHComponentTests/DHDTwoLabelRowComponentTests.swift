//
//  DHDTwoLabelRowComponentTests.swift
//  
//
//  Created by Dan Hart on 3/8/22.
//

@testable import DHDeclarable
import XCTest

class DHDTwoLabelRowComponentTests: XCTestCase {
    func testTwoLabelRow() {
        let twoLabelRow = DHDTwoLabelRowComponent(leadingText: "Buy Coffee", trailingText: "$5")
        XCTAssertEqual(twoLabelRow.leadingLabel.text, "Buy Coffee")
        XCTAssertEqual(twoLabelRow.trailingLabel.text, "$5")
    }
}
