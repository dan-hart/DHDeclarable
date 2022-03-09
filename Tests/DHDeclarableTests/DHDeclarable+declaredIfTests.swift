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
        for boolean in [true, false] {
            let stack = UIStackView().declaredWith { instance in
                instance.addArrangedSubview(DHDLabel().declaredWith { instance in
                    instance.text = "Test Label"
                })
            }
            .declaredIf(boolean) { instance in
                instance.addArrangedSubview(DHDLabel().declaredWith { instance in
                    instance.text = "Conditional Label"
                })
            }

            XCTAssertEqual(stack.arrangedSubviews.count, boolean ? 2 : 1)
            XCTAssertEqual(stack.arrangedSubview(at: 0)?.asLabel?.text, "Test Label")
            XCTAssertEqual(stack.arrangedSubview(at: 1)?.asLabel?.text, boolean ? "Conditional Label" : nil)
        }
    }

    // MARK: - Declared If Otherwise

    func testDeclaredIfOtherwiseTrue() {
        for boolean in [true, false] {
            let stack = UIStackView().declaredWith { instance in
                instance.addArrangedSubview(DHDLabel().declaredWith { instance in
                    instance.text = "Test Label"
                })
            }
            .declaredIf(boolean) { instance in
                instance.addArrangedSubview(DHDLabel().declaredWith { instance in
                    instance.text = "Conditional is true"
                })
            } otherwise: { instance in
                instance.addArrangedSubview(DHDLabel().declaredWith { instance in
                    instance.text = "Conditional is false"
                })
            }

            XCTAssertEqual(stack.arrangedSubviews.count, 2)
            XCTAssertEqual(stack.arrangedSubview(at: 0)?.asLabel?.text, "Test Label")
            XCTAssertEqual(stack.arrangedSubview(at: 1)?.asLabel?.text, boolean ? "Conditional is true" : "Conditional is false")
        }
    }
}
