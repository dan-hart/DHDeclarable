### See the other [DHDeclarable](index.md) documentation.

* `DHDeclarable` views are programatic `UIKit`, so start with a breakpoint
    * Inspect the properties, make sure they are correct
    * Make sure the view is not hidden
* Use Xcode's built-in View Hierarchy Debugger
    * See Apple's Documentation [here](https://developer.apple.com/library/archive/documentation/ToolsLanguages/Conceptual/Xcode_Overview/ExaminingtheViewHierarchy.html)
* Use `DHDeclarable` helper properties such as `.declaredWithRedLines`
    * On any `UIView`, you can add `.declaredWithRedLines` to see where the view is being drawn
    * This property adds a red border, and a light red background to the view
    * This same concept can be extended to use any color, or properties that help signify where a view is
* Use `.hierarchy` to inspect view hierarchies
    * Consider the following vertical stack:
```
DHDVStack(distribution: .fill, spacing: 10).add([
            DHDLabel("This is a header"),
            DHDSeparator(),
            UIButton().declaredWith { button in
                // use `button` to set titles, etc
            }.centerHorizontally,
            DHDSpacer(),
        ])
```
    * Set a breakpoint on a line after this view is created, then use LLDB to run a command such as `po testStack.recursiveDescription().asNSString`
    * LLDB will print something similar to this:
```
StackView (0) [
	[0] Label (This is a header)
	[1] separator	
	StackView (2) [
		[0] spacer
		[1] Button (TestButton)
		[2] spacer
	]
	[3] spacer
]
```
    * The type, accessibility identifier, and value are given for elements in the hierarchy
    * This can be useful to break down how views are being added. Note that this method provides indices that can be helpful when writing tests
    * **Note** that as of writing this article this method can only be used on a `UIStackView`, so if a view is not added to a stack view, it will not be shown in the debug output
    
### Continue learning about `DHDeclarable` in the next article: [Examples](DHDeclarable-Examples.md), or view the [map](map.md).
