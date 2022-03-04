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
    
    private class TestViewController: DHDeclarableViewController {
        override var titled: String? { "Test" }
        
        override var body: UIView {
            get {
                let label = UILabel()
                label.text = "Test Label"
                label.tag = viewTag
                return label
            }
            set { super.body = newValue }
        }
    }
    
    func testReloadView() {
        let viewController = TestViewController()
        viewController.reloadView()
        XCTAssertEqual(viewController.title, "Test")
        XCTAssertEqual((viewController.body as? UILabel)?.text, "Test Label") 
    }
}
