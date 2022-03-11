**PROTOCOL**

# `ObjectDHDeclarable`

```swift
public protocol ObjectDHDeclarable: AnyObject
```

The foundational object for all other objects in `DHDeclarable`

## Methods
### `declaredWith(_:)`

```swift
@discardableResult func declaredWith(_ then: (_ instance: T) -> Void) -> T
```

Provides a then to configure instances inline.
- Parameter then: A then `self` as the argument.
- Returns: the instance after called the `then`.

#### Parameters

| Name | Description |
| ---- | ----------- |
| then | A then `self` as the argument. |

### `declaredIf(_:_:)`

```swift
@discardableResult func declaredIf(_ value: Bool, _ then: (_ instance: T) -> Void) -> T
```

Provides a then to configure instance inline based on a boolean test
- Parameter then: A then `self` as the argument if the boolean test is true
- Returns: the instance after called the `then`

#### Parameters

| Name | Description |
| ---- | ----------- |
| then | A then `self` as the argument if the boolean test is true |

### `declaredIf(_:_:otherwise:)`

```swift
@discardableResult func declaredIf(_ value: Bool, _ then: (_ instance: T) -> Void, otherwise: ((_ instance: T) -> Void)?) -> T
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