**CLASS**

# `ResettableLazy`

```swift
@propertyWrapper public class ResettableLazy<T>
```

A property wrapper that allows a variable to be lazy and re-initialize-on-demand.
Example Usage:

@ResettableLazy({
    return "Default Value"
})
var title: String

See above example

## Properties
### `wrappedValue`

```swift
public var wrappedValue: T
```

Value that is always non-nil
Calls the setter if it is nil
