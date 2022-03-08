//
//  UIStackView+RecursiveTests.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

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
    
    func testRecursiveIdentifiers() {
        let stack = DHDVStack(arrangedSubviews: [
            DHDLabel("Hello").identified("title"),
            DHDVStack(arrangedSubviews: [
                DHDLabel("It is Monday").identified("subtitle"),
            ]).identified("substack"),
        ]).identified("main stack")
        
        // With Stack Views
        let identifiers = stack.identifiers(includingStackViews: true)
        XCTAssertEqual(identifiers.count, 4)
        let expectedIdentifiers = [
            "main stack",
            "title",
            "substack",
            "subtitle",
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
}
