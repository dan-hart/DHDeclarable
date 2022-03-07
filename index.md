# Introduction to DHDeclarable
* At its core, DHDeclarable is a protocol and a function
* Starting with the protocol: `protocol DHDeclarable`
* The protocol requires that you implement a method: `declaredWith`
* The protocol implements it for you:

```
     @discardableResult func declaredWith(_ then: (_ instance: Self) -> Void) -> Self {
         then(self)
         return self
     }
```

* This function does two things: 1) return self and 2) call a closure, with self as the parameter.
* Using this method, it allows you to initialize objects and mutate properties with syntactic sugar.
* **Note**: `@discardableResult` silences a warning if the return object is not used.

### Not using `DHDeclarable`
```
     let stackView = UIStackView()
     stackView.axis = .vertical
     stackView.distribution = .fill
     stackView.spacing = 10
     stackView.addArrangedSubview(...)
     stackView.addArrangedSubview(...)
     stackView.addArrangedSubview(...)
     return stackView
```

### Using `DHDeclarable`
```
     return UIStackView().declaredWith {​​​​​​​​​​​​​​​​​​​​​​​​​ stack in
         stack.axis = .vertical
         stack.distribution = .fill
         stack.spacing = 10
         stack.addArrangedSubview(...)
         stack.addArrangedSubview(...)
         stack.addArrangedSubview(...)
     }
```

### Notes:
* We're using the return value of with and the closure parameter, self, that `declaredWith` provides
    * The initializer of `UIStackView()` is called first
    * After the stack view is initialized, `declaredWith` is called
    * The properties of the stack view are updated
    * Finally, the stack view with the updated properties is returned.
* Note that **this is not asynchronous**, the closure is called before the return.

### Why use `DHDeclarable`?
* This allows for more declarative code
* Accessibility: using hierarchical view code, views can be made to automatically scale and text to resize.
* Views can be expressed with a hierarchy, or with more clear state properties 
* This makes writing programatic `UIKit` code a little easier than a traditional "linear" approach.
* DHDeclarable was designed to help bridge the gap between Storyboards, programatic `UIKit`, and `SwiftUI`
* When using `DHDeclarable` with `UIKit` objects, all code can be converted to traditional programatic code, it does not seek to replace `UIKit` in any way. It builds upon it.
* DHDeclarable is more of a design principle, extension of `UIKit`, and at it's core it is one function: `declaredWith`

### Continue learning about `DHDeclarable` in the next article: [Building on the Basics]
