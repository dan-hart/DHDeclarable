**PROTOCOL**

# `DHDeclarable`

```swift
public protocol DHDeclarable
```

Conform any value type to this protocol to instantiate inline

## Methods
### `declaredWith(_:)`

```swift
@discardableResult func declaredWith(_ then: (_ instance: inout T) -> Void) -> T
```

Provides a then to configure instances inline
- Parameter then: A then with a mutable copy of `self` as the argument.
- Returns: Simply returns the mutated copy of the instance after called the `then`.

#### Parameters

| Name | Description |
| ---- | ----------- |
| then | A then with a mutable copy of `self` as the argument. |

### `declaredIf(_:_:_:)`

```swift
@discardableResult func declaredIf(_ copy: inout T, _ value: Bool, _ then: (_ instance: inout T) -> Void) -> T
```

Provides a then to configure instance inline based on a boolean test
- Parameter then: A then `self` as the argument if the boolean test is true
- Returns: the instance after called the `then`

#### Parameters

| Name | Description |
| ---- | ----------- |
| then | A then `self` as the argument if the boolean test is true |

### `declaredIf(_:_:_:otherwise:)`

```swift
@discardableResult func declaredIf(_ copy: inout T, _ value: Bool, _ then: (_ instance: inout T) -> Void, otherwise: ((_ instance: inout T) -> Void)?) -> T
```

Provides a then to configure instance inline based on a boolean test
- Parameter then: A then `self` as the argument if the boolean test is true
- Parameter otherwise: A then `self` as the argument if the boolean test is false
- Returns: the instance after called the `then` or `otherwise`

#### Parameters

| Name | Description |
| ---- | ----------- |
| then | A then `self` as the argument if the boolean test is true |
| otherwise | A then `self` as the argument if the boolean test is false |