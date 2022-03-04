//
//  DHDeclarable+UIStackViewTests.swift
//  
//
//  Created by Dan Hart on 3/4/22.
//

@testable import DHDeclarable
import UIKit
import XCTest

class DHDeclarable_UIStackViewTests: XCTestCase {
    func testAxisVertical() {
        let verticalStack = UIStackView().declaredWith { stack in
            stack.axis = .vertical
        }
        XCTAssertEqual(verticalStack.axis, .vertical)
    }
}
