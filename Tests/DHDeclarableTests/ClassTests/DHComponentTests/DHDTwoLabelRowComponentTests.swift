//
//  DHDTwoLabelRowComponentTests.swift
//
//
//  Created by Dan Hart on 3/8/22.
//

#if canImport(UIKit)
    @testable import DHDeclarable
    import XCTest

    class DHDTwoLabelRowComponentTests: XCTestCase {
        func testTwoLabelRow() {
            let twoLabelRow = DHDTwoLabelRowComponent(leadingText: "Buy Coffee", trailingText: "$5")
            XCTAssertEqual(twoLabelRow.leadingLabel?.text, "Buy Coffee")
            XCTAssertEqual(twoLabelRow.trailingLabel?.text, "$5")
        }

        func testSettingLabels() {
            let twoLabelRow = DHDTwoLabelRowComponent(leadingText: "Buy Coffee", trailingText: "$5")
            twoLabelRow.leadingLabel = DHDLabel("Nothing")
            twoLabelRow.trailingLabel = DHDLabel("Free")
            XCTAssertEqual(twoLabelRow.leadingLabel?.text, "Nothing")
            XCTAssertEqual(twoLabelRow.trailingLabel?.text, "Free")
        }
    }
#endif
