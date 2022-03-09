//
//  ResettableLazy.swift
//
//
//  Created by Dan Hart on 3/8/22.
//

import Foundation

/// A property wrapper that allows a variable to be lazy and re-initialize-on-demand.
/// Example Usage:
///
/// @ResettableLazy({
///     return "Default Value"
/// })
/// var title: String
///
/// See above example
@propertyWrapper public class ResettableLazy<T> {
    // MARK: - Lifecycle
    init(_ setter: @escaping () -> T) {
        self.setter = setter
    }

    // MARK: - Public
    /// Value that is always non-nil
    /// Calls the setter if it is nil
    public var wrappedValue: T {
        get {
            if _cachedValue == nil {
                _cachedValue = setter()
            }
            return _cachedValue! // It's safe to force-unwrap here due to the nil check
        }
        // The setter is not used in this class but
        // will be used outside of this class,
        set { _cachedValue = nil }
    }

    // MARK: - Internal
    var _cachedValue: T?
    var setter: () -> T
}
