//
//  UIStackView+AxisTests.swift
//  DHDeclarable
//
//  Created by Dan Hart on 3/4/22.
//

@testable import DHDeclarable
import UIKit
import XCTest

class UIStackView_AxisTests: XCTestCase {
    func testAxisVertical() {
        let verticalStack = UIStackView().declaredWith { stack in
            stack.axis = .vertical
        }
        XCTAssertEqual(verticalStack.axis, .vertical)
    }

    func testAxisHorizontal() {
        let horizontalStack = UIStackView().declaredWith { stack in
            stack.axis = .horizontal
        }
        XCTAssertEqual(horizontalStack.axis, .horizontal)
    }
}
