//
//  DHDeclarable+ValueTypeTests.swift
//
//
//  Created by Dan Hart on 3/4/22.
//

@testable import DHDeclarable
import XCTest

// MARK: - Pet
private struct Pet: DHDeclarable, Equatable {
    var name: String
    var species: String?
}

// MARK: - DHDeclarable_ValueTypeTests
class DHDeclarable_ValueTypeTests: XCTestCase {
    // MARK: - Declared With

    func testValueTypeDeclaredWith() {
        let dog = Pet(name: "Dolly").declaredWith { instance in
            instance.species = "Dog"
        }
        XCTAssertEqual(dog.species, "Dog")
    }

    // MARK: - Declared If

    func testValueTypeDeclaredIfTrue() {
        var dog = Pet(name: "Dolly")
        dog.declaredIf(&dog, true) { instance in // Need to use &dog for value types
            instance.species = "Dog"
        }
        XCTAssertEqual(dog.species, "Dog")
    }

    func testValueTypeDeclaredIfFalse() {
        var dog = Pet(name: "Dolly")
        dog.declaredIf(&dog, false) { instance in // Need to use &dog for value types
            instance.species = "Cat" // Nope
        }
        XCTAssertEqual(dog.species, nil)
    }

    // MARK: - Declared If Otherwise

    func testValueTypeDeclaredIfOtherwiseTrue() {
        var dog = Pet(name: "Dolly")
        dog.declaredIf(&dog, true) { instance in // Need to use &dog for value types
            instance.species = "Dog"
        } otherwise: { instance in
            instance.species = "Cat" // Nope
        }
        XCTAssertEqual(dog.species, "Dog")
    }

    func testValueTypeDeclaredIfOtherwiseFalse() {
        var cat = Pet(name: "Nacho")
        cat.declaredIf(&cat, false) { instance in // Need to use &dog for value types
            instance.species = "Dog"
        } otherwise: { instance in
            instance.species = "Cat"
        }
        XCTAssertEqual(cat.species, "Cat")
    }
}
