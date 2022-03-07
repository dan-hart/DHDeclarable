//
//  UIKit+DHDHierarchyDescribableTests.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

@testable import DHDeclarable
import XCTest

class UIKit_DHDHierarchyDescribableTests: XCTestCase {
    func testLabelConformance() {
        let label = DHDLabel("Hello")
        XCTAssertEqual(label.hierarchyDescription, "Hello")
    }
    
    func testButtonConformance() {
        let button = UIButton().declaredWith { button in
            button.titleLabel?.text = "Button"
        }
        XCTAssertEqual(button.hierarchyDescription, "Button")
    }
}
