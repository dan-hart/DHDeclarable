//
//  ResettableLazy.swift
//  
//
//  Created by Dan Hart on 3/8/22.
//

import Foundation

@propertyWrapper
/// A property wrapper that allows a variable to be lazy and re-initialize-on-demand.
/// Example Usage:
/// ```
/// @ResettableLazy({
///     return "Default Value"
/// })
/// var title: String
/// ```
public class ResettableLazy<T> {
    var _cachedValue: T?
    var setter: () -> T

    init(_ setter: @escaping () -> T) {
        self.setter = setter
    }

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

    // MARK: - Methods
    public func reset() {
        _cachedValue = nil
    }
}
