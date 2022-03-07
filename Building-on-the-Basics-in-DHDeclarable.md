# Building on the Basics in `DHDeclarable`
### See [Home](index.md) if you need to reference the underlying implementation.

* Now that we understand the underlying implementation, utilizing this design principle and method we can improve how we re-use views on iOS.
* Let's refer to the Stack View Example from the introduction:
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

* To make this view simpler, we can add extensions to `UIKit` objects: in this case `UIStackView`:
```
extension Array where Element: UIView {​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​
    func add(to stackView: UIStackView) {​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​
            forEach {​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​ view in
                stackView.addArrangedSubview(view)
            }​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​
        }​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​
    }​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​
```

* Utilizing this extension, we can simplify the View syntax:
```
UIStackView().declaredWith {​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​ stack in
    stack.axis = .vertical
    stack.distribution = .fill
    stack.spacing = 10
    [
        UIView(),
    ].add(to: stack)
}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​
```
* This extension now enables any list of `UIView` objects to be added to a stack view
* This will really help how hierarchical views can be created in `UIKit`, using a familiar Swift syntax: square brackets!
* Extensions are helpful tools for creating accessible, re-usable views in DHDeclarable.

## Tip: Stack Views in DHDeclarable are a great alternative to using complicated Auto-Layout constraints

### Continue learning about `DHDeclarable` in the next article: [DHDeclarable Best Practices](DHDeclarable-Best-Practices.md), or view the [map](map.md).
