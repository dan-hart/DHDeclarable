**PROTOCOL**

# `DHDViewControlling`

```swift
public protocol DHDViewControlling
```

Conform to specify how a view show be controller

## Properties
### `body`

```swift
var body: UIView
```

Override this property to render in the subclass

## Methods
### `reloadView()`

```swift
@discardableResult func reloadView() -> UIView
```

handles all state updates
- Returns: the updated view
