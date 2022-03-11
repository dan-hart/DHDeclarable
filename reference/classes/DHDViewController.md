**CLASS**

# `DHDViewController`

```swift
open class DHDViewController: UIViewController, DHDViewControlling
```

## Properties
### `body`

```swift
open var body: UIView
```

Override this property to set

### `verticalPadding`

```swift
open var verticalPadding: CGFloat
```

Override this property to set

### `horizontalPadding`

```swift
open var horizontalPadding: CGFloat
```

Override this property to set

### `titled`

```swift
open var titled: String?
```

Override this property to set

### `renderingMode`

```swift
open var renderingMode: DHDViewControllerContentRenderingMode
```

Override this property to set

### `backgroundColor`

```swift
open var backgroundColor: UIColor?
```

Override this property to use a custom background color
use this sparingly, as we would like to move towards dark mode

### `viewTag`

```swift
public let viewTag = Int.random(in: Int.min ... Int.max)
```

Make sure to tag the root of `.body` with this value

## Methods
### `init()`

```swift
public init()
```

### `init(coder:)`

### `loadView()`

```swift
override public func loadView()
```

### `reloadView()`

```swift
@discardableResult public func reloadView() -> UIView
```

### `traitCollectionDidChange(_:)`

```swift
override public func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?)
```
