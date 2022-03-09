//
//  DHDeclarableViewControllerTests.swift
//
//
//  Created by Dan Hart on 3/4/22.
//

@testable import DHDeclarable
import UIKit
import XCTest

class DHDeclarableViewControllerTests: XCTestCase {
    // MARK: - Internal
    // MARK: - Initial Values

    func testViewTag() {
        let viewController = DHDViewController()
        let viewTag = viewController.viewTag
        XCTAssertTrue(viewTag >= Int.min)
        XCTAssertTrue(viewTag <= Int.max)
    }

    func testInitialPadding() {
        let viewController = DHDViewController()
        XCTAssertEqual(viewController.horizontalPadding, 0)
        XCTAssertEqual(viewController.verticalPadding, 0)
    }

    func testInitialRenderingMode() {
        let viewController = DHDViewController()
        XCTAssertEqual(viewController.renderingMode, .pin)
    }

    func testInitialBackgroundColor() {
        let viewController = DHDViewController()
        XCTAssertNil(viewController.backgroundColor)
    }

    func testInitialTitle() {
        let viewController = DHDViewController()
        XCTAssertNil(viewController.titled)
    }

    func testPinReloadView() {
        let viewController = TestPinViewController()
        viewController.reloadView()
        XCTAssertEqual(viewController.title, "Test Pin")
        XCTAssertEqual((viewController.body as? UILabel)?.text, "Test Pinned Label")
    }

    func testCenterReloadView() {
        let viewController = TestCenterViewController()
        viewController.reloadView()
        XCTAssertEqual(viewController.title, "Test Center")
        XCTAssertEqual((viewController.body as? UILabel)?.text, "Test Centered Label")
    }

    func testSystemBackground() {
        let viewController = DHDViewController()
        let color = viewController.systemBackground
        XCTAssertNotNil(color)
    }

    // MARK: - Private
    private class TestPinViewController: DHDViewController {
        override var titled: String? { "Test Pin" }

        override var body: UIView {
            get {
                let label = UILabel()
                label.text = "Test Pinned Label"
                label.tag = viewTag
                return label
            }
            set { super.body = newValue }
        }
    }

    private class TestCenterViewController: DHDViewController {
        override var titled: String? { "Test Center" }
        override var renderingMode: DHDViewControllerContentRenderingMode { .center }

        override var body: UIView {
            get {
                let label = UILabel()
                label.text = "Test Centered Label"
                label.tag = viewTag
                return label
            }
            set { super.body = newValue }
        }
    }
}
