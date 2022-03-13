//
//  UIStackView+RecursiveTests.swift
//
//
//  Created by Dan Hart on 3/7/22.
//

#if canImport(UIKit)
    @testable import DHDeclarable
    import XCTest

    class UIStackView_RecursiveTests: XCTestCase {
        func testRecursiveArrangedSubviews() {
            let stack = DHDVStack(arrangedSubviews: [
                DHDLabel("Title"),
                DHDVStack(arrangedSubviews: [
                    DHDLabel("Substack"),
                ]),
            ])
            let arrangedSubviews = stack.arrangedSubviews(includingStackViews: false)
            XCTAssertEqual(arrangedSubviews.count, 2)

            let arrangedSubviewsIncludingStacks = stack.arrangedSubviews(includingStackViews: true)
            XCTAssertEqual(arrangedSubviewsIncludingStacks.count, 4)
        }

        func testRecursiveArrangedSubviewsWithScrollView() {
            let stack = DHDVStack(arrangedSubviews: [
                DHDLabel("Hello").identified("title"),
                DHDScrollView(fromSuper: UIView(), with: [
                    DHDLabel("It is Monday").identified("subtitle"),
                ]).identified("scrollview"),
                DHDVStack { [] }.identified("emptyStack"),
            ]).identified("main stack")
            let arrangedSubviews = stack.arrangedSubviews(includingStackViews: false)
            XCTAssertEqual(arrangedSubviews.count, 2)

            let arrangedSubviewsIncludingStacks = stack.arrangedSubviews(includingStackViews: true)
            XCTAssertEqual(arrangedSubviewsIncludingStacks.count, 5)
        }

        func testIdentifiers() {
            let stack = DHDVStack(arrangedSubviews: [
                DHDLabel("Hello").identified("title"),
                DHDScrollView(fromSuper: UIView(), with: [
                    DHDLabel("It is Monday").identified("subtitle"),
                ]).identified("scrollview"),
                DHDVStack { [] }.identified("emptyStack"),
            ]).identified("main stack")

            // With Stack Views
            let identifiers = stack.identifiers(includingStackViews: true)
            XCTAssertEqual(identifiers.count, 5)
            let expectedIdentifiers = [
                "main stack",
                "title",
                "scrollview",
                "subtitle",
                "emptyStack",
            ]
            XCTAssertEqual(identifiers, expectedIdentifiers)

            // Without stack views
            let idsWithoutStackViews = stack.identifiers(includingStackViews: false)
            XCTAssertEqual(idsWithoutStackViews.count, 2)
            let expectedIDsWithoutStackViews = [
                "title",
                "subtitle",
            ]
            XCTAssertEqual(idsWithoutStackViews, expectedIDsWithoutStackViews)
        }

        func testFind() {
            let stack = DHDVStack(arrangedSubviews: [
                DHDLabel("Title"),
                DHDVStack(arrangedSubviews: [
                    DHDLabel("Substack"),
                ]),
            ])
            let labels = stack.find(DHDLabel())
            XCTAssertEqual(labels.count, 2)
        }

        func testFindScrollView() {
            let stack = DHDVStack(arrangedSubviews: [
                DHDLabel("Title"),
                DHDScrollView(fromSuper: UIView(), with: [
                    DHDLabel("Substack"),
                ]),
            ])
            let labels = stack.find(DHDLabel())
            XCTAssertEqual(labels.count, 2)
        }
    }
#endif
