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
    
    func testHierarchy() {
        let stack = DHDVStack(arrangedSubviews: [
            DHDLabel("Hello").identified("title"),
            DHDVStack(arrangedSubviews: [
                DHDLabel("It is Monday").identified("subtitle"),
            ]).identified("substack"),
        ]).identified("main stack")

        let hierarchyLines = stack.hierarchy.components(separatedBy: "\n")
        XCTAssertEqual(hierarchyLines.count, 7)
        
        XCTAssertEqual(hierarchyLines[optional: 0], "")
        XCTAssertEqual(hierarchyLines[optional: 1], "[0] UIStackView [")
        XCTAssertEqual(hierarchyLines[optional: 2], "\t[0] DHDLabel \"Hello\"\t")
        XCTAssertEqual(hierarchyLines[optional: 3], "\t[1] DHDVStack [")
        XCTAssertEqual(hierarchyLines[optional: 4], "\t\t[0] DHDLabel \"It is Monday\"")
        XCTAssertEqual(hierarchyLines[optional: 5], "\t]")
        XCTAssertEqual(hierarchyLines[optional: 6], "]")
    }
}
