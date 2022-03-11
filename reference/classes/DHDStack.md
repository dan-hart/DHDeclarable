**CLASS**

# `DHDStack`

```swift
open class DHDStack: UIStackView
```

A DHDeclarable wrapper for `UIStackView`

## Methods
### `init(frame:)`

```swift
override public init(frame: CGRect)
```

### `init(distribution:spacing:alignment:tag:)`

```swift
public convenience init(distribution: Distribution = .fill, spacing: CGFloat = 0, alignment: Alignment? = nil, tag: Int? = nil)
```

### `init(_:)`

```swift
public convenience init(_ byAddingArrangedSubviews: @escaping () -> [UIView?])
```

### `init(coder:)`

### `setup(distribution:spacing:alignment:tag:)`

```swift
public func setup(distribution: Distribution = .fill, spacing: CGFloat = 0, alignment: Alignment? = nil, tag: Int? = nil)
```
