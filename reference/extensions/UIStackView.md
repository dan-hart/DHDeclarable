**EXTENSION**

# `UIStackView`
```swift
public extension UIStackView
```

## Properties
### `layoutMarginRelative`

```swift
var layoutMarginRelative: Self
```

Set this Stack View's `isLayoutMarginsRelativeArrangement` to true

### `hierarchy`

```swift
var hierarchy: String
```

Recursively describe this stack and it's subviews

## Methods
### `horizontal(spacing:)`

```swift
@discardableResult func horizontal(spacing: CGFloat = 0) -> Self
```

Set the axis of this stack view to `horizontal` and set the spacing
- Parameter spacing: number to describe the spacing between arranged subviews
- Returns: this stack view

#### Parameters

| Name | Description |
| ---- | ----------- |
| spacing | number to describe the spacing between arranged subviews |

### `vertical(spacing:)`

```swift
@discardableResult func vertical(spacing: CGFloat = 0) -> Self
```

Set the axis of this stack view to `vertical` and set the spacing
- Parameter spacing: number to describe the spacing between arranged subviews
- Returns: this stack view

#### Parameters

| Name | Description |
| ---- | ----------- |
| spacing | number to describe the spacing between arranged subviews |

### `spacing(_:)`

```swift
@discardableResult func spacing(_ amount: CGFloat) -> Self
```

Set the spacing property of this stack view
- Parameter amount: the number to describe the spacing between arranged subviews
- Returns: this stack view

#### Parameters

| Name | Description |
| ---- | ----------- |
| amount | the number to describe the spacing between arranged subviews |

### `distribution(_:)`

```swift
@discardableResult func distribution(_ style: Distribution) -> Self
```

Set the distribution of this stack view
- Parameter style: the distribution style
- Returns: this stack view

#### Parameters

| Name | Description |
| ---- | ----------- |
| style | the distribution style |

### `add(arrangedSubviews:)`

```swift
@discardableResult func add(arrangedSubviews: [UIView?]) -> Self
```

Add an array of optional views to this stack view as arranged subviews, skipping nil views
- Parameter arrangedSubviews: the views to add as arranged subviews
- Returns: this stack view

#### Parameters

| Name | Description |
| ---- | ----------- |
| arrangedSubviews | the views to add as arranged subviews |

### `add(if:arrangedSubviews:)`

```swift
@discardableResult func add(if condition: Bool, arrangedSubviews: [UIView?]) -> Self
```

if a specific condition is true, then add the specified arranged subviews
- Parameters:
  - condition: the boolean condition to evaluate
  - arrangedSubviews: the views to add if the condition is true
- Returns: this stack view, with the arranged subviews if the condition is true

#### Parameters

| Name | Description |
| ---- | ----------- |
| condition | the boolean condition to evaluate |
| arrangedSubviews | the views to add if the condition is true |

### `arrangedSubviews(includingStackViews:)`

```swift
func arrangedSubviews(includingStackViews: Bool) -> [UIView]
```

Recursive method that returns the arranged subviews
- Parameter includingSelf: should this view be a part of the returned array
- Returns: an array of views

#### Parameters

| Name | Description |
| ---- | ----------- |
| includingSelf | should this view be a part of the returned array |

### `identifiers(includingStackViews:)`

```swift
func identifiers(includingStackViews: Bool) -> [String]
```

Recursively search this stack for accessibility identifiers
- Returns: an array of strings of all the identifiers

### `find(_:)`

```swift
func find<T>(_ type: T) -> [T]
```

Recursively search arranged subviews and any stack views arranged subviews for the given type and
- Parameter type: the given type
- Returns: an array of the subviews of the given type

#### Parameters

| Name | Description |
| ---- | ----------- |
| type | the given type |

### `hierarchy(description:level:stackIndex:)`

```swift
func hierarchy(description: String, level: Int = 0, stackIndex: Int = 0) -> String
```

Recursively describe this stack and it's subviews
- Returns: a string of the description

### `arrangedSubview(at:)`

```swift
func arrangedSubview(at index: Int) -> UIView?
```

Retrieve an arranged subview at the specified index
- Parameter index: the 0-based index of the arranged subview
- Returns: the optional view at the specified index.

#### Parameters

| Name | Description |
| ---- | ----------- |
| index | the 0-based index of the arranged subview |

### `forEach(_:style:convertToView:)`

```swift
@discardableResult func forEach<T>(_ array: [T], style: DividerStyle = .innerOuter, convertToView: @escaping (T) -> UIView) -> Self
```

For each item in a given array, convert each element into a `UIView`, then add arranged subview
- Parameters:
  - array: the data source
  - convertToView: how to format each element in the data source to a `UIView`

#### Parameters

| Name | Description |
| ---- | ----------- |
| array | the data source |
| convertToView | how to format each element in the data source to a `UIView` |

### `forEach(_:style:completion:)`

```swift
@discardableResult func forEach<T>(_ array: [T], style: DividerStyle = .innerOuter, completion: @escaping (Int, T) -> Void) -> Self
```

For each item in a given array, call a completion to handle each index & element
- Parameters:
  - array: the data source
  - completion: index + element

#### Parameters

| Name | Description |
| ---- | ----------- |
| array | the data source |
| completion | index + element |

### `removeAllArrangedSubviews()`

```swift
func removeAllArrangedSubviews()
```

Clear all arranged subviews from this stack
