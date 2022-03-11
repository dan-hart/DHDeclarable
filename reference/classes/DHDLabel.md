**CLASS**

# `DHDLabel`

```swift
open class DHDLabel: UILabel
```

Connivence object for `UILabel`

## Methods
### `init(font:textColor:alignment:text:lineLimit:adjustsFontForContentSizeCategory:)`

```swift
public convenience init(font: UIFont?,
                        textColor: UIColor?,
                        alignment: NSTextAlignment?,
                        text: String?,
                        lineLimit: Int?,
                        adjustsFontForContentSizeCategory: Bool?)
```

### `init(_:font:)`

```swift
public convenience init(_ text: String?,
                        font: UIFont? = UIFont.preferredFont(forTextStyle: .body))
```

Create a `DHDLabel` with a font and some text
- Parameters:
  - text: a string of text
  - font: the `UIFont` of the label

#### Parameters

| Name | Description |
| ---- | ----------- |
| text | a string of text |
| font | the `UIFont` of the label |

### `init(_:)`

```swift
public convenience init(_ text: String?)
```

Create a `DHDLabel` with some text
- Parameter text: a string of text

#### Parameters

| Name | Description |
| ---- | ----------- |
| text | a string of text |