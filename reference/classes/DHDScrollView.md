**CLASS**

# `DHDScrollView`

```swift
open class DHDScrollView: UIView
```

Vertically scrolling view that uses a stack view to handle subviews

## Properties
### `viewsDidBecomeVisible`

```swift
public var viewsDidBecomeVisible: (([UIView]) -> Void)?
```

### `scrollView`

```swift
public var scrollView = UIScrollView(frame: CGRect.zero).declaredWith { instance in
    instance.translatesAutoresizingMaskIntoConstraints = false
    instance.layoutMargins = .zero
}
```

### `stack`

```swift
public var stack = UIStackView(frame: CGRect.zero).declaredWith { instance in
    instance.translatesAutoresizingMaskIntoConstraints = false
    instance.axis = .vertical // ScrollableView is designed only to scroll on a vertical axis
}
```

## Methods
### `init(fromSuper:)`

```swift
public init(fromSuper superView: UIView)
```

### `init(coder:)`

### `init(fromSuper:_:)`

```swift
public convenience init(fromSuper superView: UIView, _ byAddingArrangedSubviews: @escaping () -> [UIView?])
```

Create this view with a predetermined array of views
- Parameters:
  - superView: the superview to render this view in

#### Parameters

| Name | Description |
| ---- | ----------- |
| superView | the superview to render this view in |

### `init(fromSuper:with:)`

```swift
public convenience init(fromSuper superView: UIView, with views: [UIView])
```

Create this view with a predetermined array of views
- Parameters:
  - superView: the superview to render this view in
  - views: the predetermined array of views to render

#### Parameters

| Name | Description |
| ---- | ----------- |
| superView | the superview to render this view in |
| views | the predetermined array of views to render |

### `init(fromSuper:forEach:style:convertToView:)`

```swift
public convenience init<T>(fromSuper superView: UIView, forEach array: [T], style: UIStackView.DividerStyle = .innerOuter, convertToView: @escaping (T) -> UIView)
```

Create a scrollable view dynamically from a collection
- Parameters:
  - superView: the superview to render this view into
  - array: the array of data to iterate
  - style: how should dividers be displayed
  - convertToView: closure to call on each element in the array to convert it to a view

#### Parameters

| Name | Description |
| ---- | ----------- |
| superView | the superview to render this view into |
| array | the array of data to iterate |
| style | how should dividers be displayed |
| convertToView | closure to call on each element in the array to convert it to a view |

### `didMoveToSuperview()`

```swift
override public func didMoveToSuperview()
```

### `updateConstraints()`

```swift
override public func updateConstraints()
```

### `setLayoutMargins(verticalMargin:horizontalMargin:)`

```swift
public func setLayoutMargins(verticalMargin: CGFloat, horizontalMargin: CGFloat)
```

Set the layoutMargins of the Stack
- Parameters:
  - verticalMargin: The top and bottom margins
  - horizontalMargin: The left and right margins

#### Parameters

| Name | Description |
| ---- | ----------- |
| verticalMargin | The top and bottom margins |
| horizontalMargin | The left and right margins |