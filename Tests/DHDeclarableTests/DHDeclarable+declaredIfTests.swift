//
//  DHDeclarable+declaredIfTests.swift
//
//
//  Created by Dan Hart on 3/4/22.
//

@testable import DHDeclarable
import UIKit
import XCTest

class DHDeclarable_declaredIfTests: XCTestCase {
    // MARK: - Declared If

    func testDeclaredIfTrue() {
        let stack = UIStackView().declaredWith { instance in
            instance.addArrangedSubview(UILabel().declaredWith { instance in
                instance.text = "Test Label"
            })
        }
        .declaredIf(true) { instance in
            instance.addArrangedSubview(UILabel().declaredWith { instance in
                instance.text = "Conditional is true, label is added"
            })
        }

        XCTAssertEqual(stack.arrangedSubviews.count, 2)
        XCTAssertEqual((stack.arrangedSubviews.first as? UILabel)?.text, "Test Label")
        XCTAssertEqual((stack.arrangedSubviews.last as? UILabel)?.text, "Conditional is true, label is added")
    }

    func testDeclaredIfFalse() {
        let stack = UIStackView().declaredWith { instance in
            instance.addArrangedSubview(UILabel().declaredWith { instance in
                instance.text = "Test Label"
            })
        }
        .declaredIf(false) { instance in
            instance.addArrangedSubview(UILabel().declaredWith { instance in
                instance.text = "Conditional is false, label is not added"
            })
        }

        XCTAssertEqual(stack.arrangedSubviews.count, 1)
        XCTAssertEqual((stack.arrangedSubviews.first as? UILabel)?.text, "Test Label")
    }

    // MARK: - Declared If Otherwise

    func testDeclaredIfOtherwiseTrue() {
        let stack = UIStackView().declaredWith { instance in
            instance.addArrangedSubview(UILabel().declaredWith { instance in
                instance.text = "Test Label"
            })
        }
        .declaredIf(true) { instance in
            instance.addArrangedSubview(UILabel().declaredWith { instance in
                instance.text = "Conditional is true, label is added"
            })
        } otherwise: { instance in
            instance.addArrangedSubview(UILabel().declaredWith { instance in
                instance.text = "Conditional is true, this label is NOT added"
            })
        }

        XCTAssertEqual(stack.arrangedSubviews.count, 2)
        XCTAssertEqual((stack.arrangedSubviews.first as? UILabel)?.text, "Test Label")
        XCTAssertEqual((stack.arrangedSubviews.last as? UILabel)?.text, "Conditional is true, label is added")
    }

    func testDeclaredIfOtherwiseFalse() {
        let stack = UIStackView().declaredWith { instance in
            instance.addArrangedSubview(UILabel().declaredWith { instance in
                instance.text = "Test Label"
            })
        }
        .declaredIf(false) { instance in
            instance.addArrangedSubview(UILabel().declaredWith { instance in
                instance.text = "Conditional is false, this label is NOT added"
            })
        } otherwise: { instance in
            instance.addArrangedSubview(UILabel().declaredWith { instance in
                instance.text = "Conditional is false, this label is added"
            })
        }

        XCTAssertEqual(stack.arrangedSubviews.count, 2)
        XCTAssertEqual((stack.arrangedSubviews.first as? UILabel)?.text, "Test Label")
        XCTAssertEqual((stack.arrangedSubviews.last as? UILabel)?.text, "Conditional is false, this label is added")
    }
}
