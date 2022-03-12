//
//  UIView+declaredWithRedLinesTests.swift
//
//
//  Created by Dan Hart on 3/4/22.
//

@testable import DHDeclarable
#if canImport(UIKit)
    import UIKit
    import XCTest

    class UIView_declaredWithRedLinesTests: XCTestCase {
        func testDeclaredWithRedLines() {
            let view = UIView().declaredWithRedLines
            XCTAssertEqual(view.layer.borderWidth, 1)
            XCTAssertEqual(view.layer.cornerRadius, 2)
            XCTAssertEqual(view.layer.borderColor, UIColor.red.withAlphaComponent(0.3).cgColor)
            XCTAssertEqual(view.backgroundColor, UIColor.red.withAlphaComponent(0.1))
        }

        func testInspect() {
            let view = UIView().inspect
            XCTAssertEqual(view.layer.borderWidth, 1)
            XCTAssertEqual(view.layer.cornerRadius, 2)
            XCTAssertEqual(view.layer.borderColor, UIColor.red.withAlphaComponent(0.3).cgColor)
            XCTAssertEqual(view.backgroundColor, UIColor.red.withAlphaComponent(0.1))
        }
    }
#endif
