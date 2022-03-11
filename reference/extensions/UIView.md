**EXTENSION**

# `UIView`
```swift
public extension UIView
```

## Properties
### `centerHorizontally`

```swift
var centerHorizontally: DHDHStack
```

Put this view in a UIHStack with a spacer before and after

### `declaredWithRedLines`

```swift
var declaredWithRedLines: UIView
```

Add a border, corner radius, and light background color to inspect a view

### `inspect`

```swift
var inspect: UIView
```

Add a border, corner radius, and light background color to debug a view

### `cornerRadius`

```swift
var cornerRadius: CGFloat
```

Access the layer's corner radius with this helper, also properely set `masksToBounds`

## Methods
### `addDivider(at:color:weight:insets:)`

```swift
@discardableResult func addDivider(at position: DHDDividerPosition, color: UIColor, weight: CGFloat = 1.0 / UIScreen.main.scale, insets: UIEdgeInsets = .zero) -> UIView
```

Create a horizontal line at the specified position, color, weight, using the insets
- Returns: a `UIView` as the divider

### `background(color:)`

```swift
@discardableResult func background(color: UIColor?) -> Self
```

Set the background color of this view
- Parameter color: optional `UIColor`
- Returns: this view

#### Parameters

| Name | Description |
| ---- | ----------- |
| color | optional `UIColor` |

### `identified(_:)`

```swift
@objc @discardableResult func identified(_ value: String) -> Self
```

Set the `.accessibilityIdentifier` of this view
- Parameter value: the `String` value to set
- Returns: this view

#### Parameters

| Name | Description |
| ---- | ----------- |
| value | the `String` value to set |

### `margin(horizontal:vertical:)`

```swift
@discardableResult func margin(horizontal: CGFloat, vertical: CGFloat) -> Self
```

Set the margin of this view
- Parameters:
  - horizontal: the `CGFloat` of the width
  - vertical: the `CGFloat` of the height
- Returns: this view

#### Parameters

| Name | Description |
| ---- | ----------- |
| horizontal | the `CGFloat` of the width |
| vertical | the `CGFloat` of the height |

### `margin(top:right:bottom:left:)`

```swift
@discardableResult func margin(top: CGFloat, right: CGFloat, bottom: CGFloat, left: CGFloat) -> Self
```

Set the margin of each side of this view
- Parameters:
  - top: the `CGFloat` of the top
  - right: the `CGFloat` of the right
  - bottom: the `CGFloat` of the bottom
  - left: the `CGFloat` of the left
- Returns: this view

#### Parameters

| Name | Description |
| ---- | ----------- |
| top | the `CGFloat` of the top |
| right | the `CGFloat` of the right |
| bottom | the `CGFloat` of the bottom |
| left | the `CGFloat` of the left |

### `center(to:heightLessThanOrEqualToConstant:widthLessThanOrEqualToConstant:)`

```swift
func center(to: UIView, heightLessThanOrEqualToConstant: CGFloat, widthLessThanOrEqualToConstant: CGFloat)
```

Put this view in the center of a containing view
- Parameters:
  - to: the containing view, make sure this view is a subview
  - heightLessThanOrEqualToConstant: .
  - widthLessThanOrEqualToConstant: .

#### Parameters

| Name | Description |
| ---- | ----------- |
| to | the containing view, make sure this view is a subview |
| heightLessThanOrEqualToConstant | . |
| widthLessThanOrEqualToConstant | . |

### `pin(to:withVerticalPadding:withHorizontalPadding:)`

```swift
func pin(to superView: UIView, withVerticalPadding: CGFloat = 0, withHorizontalPadding: CGFloat = 0)
```

Use constraints to pin this to a superview
- Parameters:
  - superView: .
  - withVerticalPadding: .
  - withHorizontalPadding: .

#### Parameters

| Name | Description |
| ---- | ----------- |
| superView | . |
| withVerticalPadding | . |
| withHorizontalPadding | . |

### `rounded(by:)`

```swift
@discardableResult func rounded(by radius: CGFloat) -> Self
```

Set the corner radius of this view
- Parameter radius: how much to round the corner
- Returns: this view

#### Parameters

| Name | Description |
| ---- | ----------- |
| radius | how much to round the corner |

### `tagged(_:)`

```swift
@discardableResult func tagged(_ tag: Int) -> Self
```

Set the `tag` of this view
- Parameter tag: an `Int` of a tag
- Returns: this view

#### Parameters

| Name | Description |
| ---- | ----------- |
| tag | an `Int` of a tag |

### `toPreview()`

```swift
func toPreview() -> some View
```

Example usage:
```
// MARK: - Preview
import SwiftUI
struct UIViewPreview: PreviewProvider {
   static var previews: some View {
       UIView().toPreview()
   }
}
```
