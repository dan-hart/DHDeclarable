//
//  UIViewController+asTests.swift
//
//
//  Created by Dan Hart on 3/8/22.
//

#if canImport(UIKit)
    @testable import DHDeclarable
    import XCTest

    class UIViewController_asTests: XCTestCase {
        func testViewControllerAsNavigationController() {
            let viewController = UIViewController()
            viewController.title = "Root"
            let navController = viewController.inNavigationController
            XCTAssertNotNil(navController)
            navController.pushViewController(UIViewController().declaredWith { $0.title = "not root" }, animated: false)
            XCTAssertEqual(navController.topViewController?.title, "not root")
            navController.popToRootViewController(animated: false)
            XCTAssertEqual(navController.topViewController?.title, "Root")
        }
    }
#endif
