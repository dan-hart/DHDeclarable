//
//  PreviewTests.swift
//
//
//  Created by Dan Hart on 3/8/22.
//

@testable import DHDeclarable
#if canImport(SwiftUI)
    #if canImport(UIKit)
        import SwiftUI
        import XCTest

        @available(iOS 13, *) class PreviewTests: XCTestCase {
            func testUIViewPreview() {
                let uiViewPreview = UIView().toPreview()
                XCTAssertNotNil(uiViewPreview)
            }

            func testUIViewControllerPreview() {
                let uiViewControllerPreview = UIViewController().toPreview()
                XCTAssertNotNil(uiViewControllerPreview)
            }
        }
    #endif
#endif
