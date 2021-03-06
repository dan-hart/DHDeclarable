//
//  DHDScrollViewTests.swift
//
//
//  Created by Dan Hart on 3/7/22.
//

#if canImport(UIKit)
    @testable import DHDeclarable
    import XCTest

    class DHDScrollViewTests: XCTestCase {
        // MARK: - Internal
        func testInit() {
            let viewController = UIViewController()
            let items = [
                "1",
                "2",
                "3",
            ]
            let scrollView = DHDScrollView(fromSuper: viewController.view, forEach: items, style: .none) { item in
                DHDLabel(item)
            }
            XCTAssertNotNil(scrollView)
            XCTAssertEqual(scrollView.stack.arrangedSubviews.count, 3)
        }

        func testFailableInit() {
            let nilScrollView = DHDScrollView(coder: NSCoder())
            XCTAssertNil(nilScrollView)
        }

        func testCompletionConvenienceInit() {
            let viewController = UIViewController()
            let scrollView = DHDScrollView(fromSuper: viewController.view) { [
                DHDLabel("1"),
                DHDLabel("2"),
                nil,
                DHDLabel("3"),
            ] }
            XCTAssertNotNil(scrollView)
            XCTAssertEqual(scrollView.stack.arrangedSubviews.count, 3)
        }

        func testWithDHDViewController() {
            let viewController = TestViewController()
            viewController.reloadView()
            _ = viewController.body
            XCTAssertEqual(viewController.body.tag, viewController.viewTag)
        }

        func testScrollViewDelegate() {
            let viewController = TestViewController()
            viewController.reloadView()
            _ = viewController.body
            let uiScrollView = viewController.body.asScrollView!.scrollView

            uiScrollView.delegate?.scrollViewDidScroll?(uiScrollView)
        }

        func testScrollViewStyle() {
            let scrollView = DHDScrollView(fromSuper: UIView())
                .setMargin(verticalMargin: 10, horizontalMargin: 20)
                .distributed(.fill)
                .spacing(20)
            XCTAssertEqual(scrollView.stack.layoutMargins.top, 10)
            XCTAssertEqual(scrollView.stack.layoutMargins.bottom, 10)
            XCTAssertEqual(scrollView.stack.layoutMargins.left, 20)
            XCTAssertEqual(scrollView.stack.layoutMargins.right, 20)

            XCTAssertEqual(scrollView.stack.distribution, .fill)
            XCTAssertEqual(scrollView.stack.spacing, 20)
        }

        // MARK: - Private
        private class TestViewController: DHDViewController {
            let items = [
                "1",
                "2",
                "3",
            ]

            override var titled: String? { "Test" }

            override var body: UIView {
                get {
                    DHDScrollView(fromSuper: view, forEach: items, style: .none) { item in
                        DHDLabel(item)
                    }
                    .tagged(viewTag)
                }
                set { super.body = newValue }
            }
        }
    }
#endif
