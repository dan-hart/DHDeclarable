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
    // MARK: - Initial Values
    func testViewTag() {
        let viewController = DHDeclarableViewController()
        let viewTag = viewController.viewTag
        XCTAssertTrue(viewTag >= Int.min)
        XCTAssertTrue(viewTag <= Int.max)
    }
    
    func testInitialPadding() {
        let viewController = DHDeclarableViewController()
        XCTAssertEqual(viewController.horizontalPadding, 0)
        XCTAssertEqual(viewController.verticalPadding, 0)
    }
    
    func testInitialRenderingMode() {
        let viewController = DHDeclarableViewController()
        XCTAssertEqual(viewController.renderingMode, .pin)
    }
    
    func testInitialBackgroundColor() {
        let viewController = DHDeclarableViewController()
        XCTAssertNil(viewController.backgroundColor)
    }
    
    func testInitialTitle() {
        let viewController = DHDeclarableViewController()
        XCTAssertNil(viewController.titled)
    }
    
    private class TestPinViewController: DHDeclarableViewController {
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
    
    func testPinReloadView() {
        let viewController = TestPinViewController()
        viewController.reloadView()
        XCTAssertEqual(viewController.title, "Test Pin")
        XCTAssertEqual((viewController.body as? UILabel)?.text, "Test Pinned Label")
    }
    
    private class TestCenterViewController: DHDeclarableViewController {
        override var titled: String? { "Test Center" }
        override var renderingMode: DHDeclarableViewControllerContentRenderingMode { .center }
        
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
    
    func testCenterReloadView() {
        let viewController = TestCenterViewController()
        viewController.reloadView()
        XCTAssertEqual(viewController.title, "Test Center")
        XCTAssertEqual((viewController.body as? UILabel)?.text, "Test Centered Label")
    }
}
