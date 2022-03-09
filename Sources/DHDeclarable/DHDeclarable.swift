//
//  DHDeclarable.swift
//  DHDeclarable
//
//  Created by Dan Hart on 3/4/22.
//

import Foundation

// MARK: - ObjectDHDeclarable
/// The foundational object for all other objects in `DHDeclarable`
public protocol ObjectDHDeclarable: AnyObject {
    /// Generic for use with any type
    associatedtype T

    /// Provides a then to configure instances inline.
    /// - Parameter then: A then `self` as the argument.
    /// - Returns: the instance after called the `then`.
    @discardableResult func declaredWith(_ then: (_ instance: T) -> Void) -> T

    /// Provides a then to configure instance inline based on a boolean test
    /// - Parameter then: A then `self` as the argument if the boolean test is true
    /// - Returns: the instance after called the `then`
    @discardableResult func declaredIf(_ value: Bool, _ then: (_ instance: T) -> Void) -> T

    /// Provides a then to configure instance inline based on a boolean test
    /// - Parameter then: A then `self` as the argument if the boolean test is true
    /// - Parameter otherwise: A then `self` as the argument if the boolean test is false
    /// - Returns: the instance after called the `then` or `otherwise`
    @discardableResult func declaredIf(_ value: Bool, _ then: (_ instance: T) -> Void, otherwise: ((_ instance: T) -> Void)?) -> T
}

public extension ObjectDHDeclarable {
    /// Provides a then to configure instances inline.
    /// - Parameter then: A then `self` as the argument.
    /// - Returns: Simply returns the instance after called the `then`.
    @discardableResult func declaredWith(_ then: (_ instance: Self) -> Void) -> Self {
        then(self)
        return self
    }

    /// Provides a then to configure instance inline based on a boolean test
    /// - Parameter then: A then `self` as the argument if the boolean test is true
    /// - Returns: the instance after called the `then`
    @discardableResult func declaredIf(_ value: Bool, _ then: (_ instance: Self) -> Void) -> Self {
        return declaredIf(value, then, otherwise: nil)
    }

    /// Provides a then to configure instance inline based on a boolean test
    /// - Parameter then: A then `self` as the argument if the boolean test is true
    /// - Parameter otherwise: A then `self` as the argument if the boolean test is false
    /// - Returns: the instance after called the `then` or `otherwise`
    @discardableResult func declaredIf(_ value: Bool, _ then: (_ instance: Self) -> Void, otherwise: ((_ instance: Self) -> Void)?) -> Self {
        if value {
            then(self)
            return self
        } else {
            otherwise?(self)
            return self
        }
    }
}

// MARK: - NSObject + ObjectDHDeclarable
/// Conforms all objects to `DHDeclarable`
extension NSObject: ObjectDHDeclarable {}

// MARK: - DHDeclarable
/// Conform any value type to this protocol to instantiate inline
public protocol DHDeclarable {
    /// Generic for use with any type
    associatedtype T

    /// Provides a then to configure instances inline
    /// - Parameter then: A then with a mutable copy of `self` as the argument.
    /// - Returns: Simply returns the mutated copy of the instance after called the `then`.
    @discardableResult func declaredWith(_ then: (_ instance: inout T) -> Void) -> T

    /// Provides a then to configure instance inline based on a boolean test
    /// - Parameter then: A then `self` as the argument if the boolean test is true
    /// - Returns: the instance after called the `then`
    @discardableResult func declaredIf(_ copy: inout T, _ value: Bool, _ then: (_ instance: inout T) -> Void) -> T

    /// Provides a then to configure instance inline based on a boolean test
    /// - Parameter then: A then `self` as the argument if the boolean test is true
    /// - Parameter otherwise: A then `self` as the argument if the boolean test is false
    /// - Returns: the instance after called the `then` or `otherwise`
    @discardableResult func declaredIf(_ copy: inout T, _ value: Bool, _ then: (_ instance: inout T) -> Void, otherwise: ((_ instance: inout T) -> Void)?) -> T
}

public extension DHDeclarable {
    /// Provides a then to configure instances inline.
    /// - Parameter then: A then `self` as the argument.
    /// - Returns: Simply returns the instance after called the `then`.
    @discardableResult func declaredWith(_ then: (_ instance: inout Self) -> Void) -> Self {
        var copy = self
        then(&copy)
        return copy
    }

    /// Provides a then to configure instance inline based on a boolean test
    /// - Parameter then: A then `self` as the argument if the boolean test is true
    /// - Returns: the instance after called the `then`
    @discardableResult func declaredIf(_ copy: inout T, _ value: Bool, _ then: (_ instance: inout T) -> Void) -> T {
        if value {
            then(&copy)
            return copy
        } else {
            return copy
        }
    }

    /// Provides a then to configure instance inline based on a boolean test
    /// - Parameter then: A then `self` as the argument if the boolean test is true
    /// - Parameter otherwise: A then `self` as the argument if the boolean test is false
    /// - Returns: the instance after called the `then` or `otherwise`
    @discardableResult func declaredIf(_ copy: inout T, _ value: Bool, _ then: (_ instance: inout T) -> Void, otherwise: ((_ instance: inout T) -> Void)?) -> T {
        if value {
            then(&copy)
            return copy
        } else {
            otherwise?(&copy)
            return copy
        }
    }
}
