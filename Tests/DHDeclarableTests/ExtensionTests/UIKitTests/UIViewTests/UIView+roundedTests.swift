//
//  UIView+roundedTests.swift
//
//
//  Created by Dan Hart on 3/4/22.
//

@testable import DHDeclarable
import UIKit
import XCTest

class UIView_roundedTests: XCTestCase {
    var testCornerRadiusValue: CGFloat = 8

    func testCornerRadius() {
        let view = UIView()
        view.cornerRadius = testCornerRadiusValue
        XCTAssertEqual(view.layer.cornerRadius, testCornerRadiusValue)
        XCTAssertTrue(view.layer.masksToBounds)
    }

    func testRounded() {
        let view = UIView()
        XCTAssertEqual(view.layer.cornerRadius, 0)
        XCTAssertNotNil(view.rounded(by: testCornerRadiusValue))
        XCTAssertEqual(view.cornerRadius, testCornerRadiusValue)
    }
}
