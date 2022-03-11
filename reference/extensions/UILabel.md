**EXTENSION**

# `UILabel`
```swift
extension UILabel: DHDStringRepresentable
```

## Properties
### `stringRepresentation`

```swift
public var stringRepresentation: String
```

### `adjustableFontSize`

```swift
var adjustableFontSize: UILabel
```

Set `adjustsFontForContentSizeCategory` to true

### `alignedRight`

```swift
var alignedRight: UILabel
```

Set text alignment to right

### `alignedLeft`

```swift
var alignedLeft: UILabel
```

Set text alignment to left

### `multiline`

```swift
var multiline: UILabel
```

set `numberOfLines` to 0

## Methods
### `font(_:)`

```swift
@discardableResult func font(_ font: UIFont) -> Self
```

set the font of this label

### `textStyle(_:)`

```swift
@discardableResult func textStyle(_ style: UIFont.TextStyle) -> Self
```

set the font of this label using text styles

### `textColor(_:)`

```swift
@discardableResult func textColor(_ color: UIColor) -> Self
```

set the text color of this label

### `alignment(_:)`

```swift
@discardableResult func alignment(_ alignment: NSTextAlignment) -> Self
```

set the text alignment of this label

### `lineSpacing(_:)`

```swift
@discardableResult func lineSpacing(_ lineSpacing: CGFloat) -> Self
```

set the line spacing of this label

### `declaredWith(text:)`

```swift
@discardableResult func declaredWith(text: String?) -> Self
```

set the text property of this label
