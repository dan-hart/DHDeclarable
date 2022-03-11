**EXTENSION**

# `UIViewController`
```swift
public extension UIViewController
```

## Properties
### `inNavigationController`

```swift
var inNavigationController: UINavigationController
```

Put this view controller in the `rootViewController` of a `UINavigationController` and return it

## Methods
### `toPreview()`

```swift
func toPreview() -> some View
```

Example usage:
```
// MARK: - Preview
import SwiftUI
struct UIViewControllerPreview: PreviewProvider {
   static var previews: some View {
       UIViewController().toPreview()
   }
}
```
