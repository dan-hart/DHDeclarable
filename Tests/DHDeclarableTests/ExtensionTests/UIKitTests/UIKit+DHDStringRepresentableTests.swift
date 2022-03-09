//
//  UIKit+DHDStringRepresentableTests.swift
//
//
//  Created by Dan Hart on 3/7/22.
//

@testable import DHDeclarable
import XCTest

class UIKit_DHDStringRepresentableTests: XCTestCase {
    func testLabelConformance() {
        let label = DHDLabel("Hello")
        XCTAssertEqual(label.stringRepresentation, "Hello")
    }

    func testLabelNilConformance() {
        let label = DHDLabel()
        XCTAssertEqual(label.stringRepresentation, "")
    }

    func testButtonConformance() {
        let button = UIButton().declaredWith { button in
            button.titleLabel?.text = "Button"
        }
        XCTAssertEqual(button.stringRepresentation, "Button")
    }

    func testButtonNilConformance() {
        let button = UIButton().declaredWith { _ in
        }
        XCTAssertEqual(button.stringRepresentation, "")
    }
}
