**EXTENSION**

# `DHDView`
```swift
public extension DHDView
```

## Properties
### `stringRepresentation`

```swift
public var stringRepresentation: String
```

## Methods
### `divider(_:)`

```swift
static func divider(_ color: UIColor) -> DHDView
```

create a horizontal line of a specified color
- Parameter color: UIColor
- Returns: the divider

#### Parameters

| Name | Description |
| ---- | ----------- |
| color | UIColor |

### `spacer(vertical:)`

```swift
@discardableResult static func spacer(vertical height: CGFloat) -> DHDView
```

create a spacer of a specific size
- Parameter height: .
- Returns: the spacer

#### Parameters

| Name | Description |
| ---- | ----------- |
| height | . |

### `spacer(horizontal:)`

```swift
@discardableResult static func spacer(horizontal width: CGFloat) -> DHDView
```

create a spacer of a specific size
- Parameter width: .
- Returns: the spacer

#### Parameters

| Name | Description |
| ---- | ----------- |
| width | . |