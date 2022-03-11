**EXTENSION**

# `DHDScrollView`
```swift
extension DHDScrollView: UIScrollViewDelegate
```

## Methods
### `scrollViewDidScroll(_:)`

```swift
public func scrollViewDidScroll(_ scrollView: UIScrollView)
```

### `scrollViewDidEndDecelerating(_:)`

```swift
public func scrollViewDidEndDecelerating(_ scrollView: UIScrollView)
```

### `scrollViewDidEndDragging(_:willDecelerate:)`

```swift
public func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool)
```

### `scrollViewDidEndScrolling(_:)`

```swift
public func scrollViewDidEndScrolling(_ scrollView: UIScrollView)
```

### `setMargin(verticalMargin:horizontalMargin:)`

```swift
@discardableResult func setMargin(verticalMargin: CGFloat, horizontalMargin: CGFloat) -> Self
```

Set the margin of this scroll view
- Parameters:
  - verticalMargin: CGFloat of the vertical margin
  - horizontalMargin: CGFloat of the horizontal margin
- Returns: this scroll view

#### Parameters

| Name | Description |
| ---- | ----------- |
| verticalMargin | CGFloat of the vertical margin |
| horizontalMargin | CGFloat of the horizontal margin |

### `distributed(_:)`

```swift
@discardableResult func distributed(_ distribution: UIStackView.Distribution) -> Self
```

Set the `.distribution` property of the inner stack view
- Parameter distribution: the stack view distribution
- Returns: this scroll view

#### Parameters

| Name | Description |
| ---- | ----------- |
| distribution | the stack view distribution |

### `spacing(_:)`

```swift
@discardableResult func spacing(_ spacing: CGFloat) -> Self
```

Set the `.spacing` property of the inner stack view
- Parameter spacing: the stack view spacing
- Returns: this scroll view

#### Parameters

| Name | Description |
| ---- | ----------- |
| spacing | the stack view spacing |

### `identified(_:)`

```swift
override func identified(_ value: String) -> Self
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| value | the `String` value to set |