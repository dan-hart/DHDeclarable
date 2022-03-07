# DHDeclarable Best Practices
### See the  other [DHDeclarable](index.md) documentation.

* **Use "built-in" components**
    * `DHDHStack` (Horizontal Stack)
    * `DHDVStack` (Vertical Stack)
    * `DHDLabel` (UILabel)
    * `DHDView.spacer` (Spacing)
    * `DHDView.divider​​​​​​​` (Horizontal Line)
    * Custom spacers - `DHDView.sppacer(height:)` and `DHDView.spacer(width:)` can be used to specify a height or width, respectively
        * `DHDSpacer(width: 10)` for a spacer that is 10px wide
* **Build from the smallest component to larger**
    * Because views in DHDeclarable build on each other, start by building the smallest component first, and then building it from there.
    * By using this approach you reduce re-used code and leverage components to build more complicated screens.
* **Design with Accessibility in mind**
    * Built-in DHDeclarable components, like DHDText, to implement dynamic type if you use a custom font
    * This means that each time you use UIText, the font size scales properly with accessibility.
    * Using dynamic text in Stack Views also resize the view, so it is best to use Stack Views to layout your view: this way your screens will work no matter the text size or screen size.
* **Refactor complicated view hierarchies into components (or their own file)**
    * DHDeclarable code can be written in a class, func, struct, var, or inside other DHDeclarable code.
    * Since it can be written anywhere, it's easy for a small view to become larger over time.
    * Make sure that you factor out common or large sections of DHDeclarable code into a new file, function, class, or extension.
    * This helps keep code maintainable and highly readable
* **Write reactive and declarative views with state in mind**
    * Just like SwiftUI, DHDeclarable was designed to be declarative
    * Instead of writing views to be built with a set of top-down instructions, think of your views as an expression of state
        * Is this view enabled or disabled?
        * Is this view in add, edit, or view mode?
    * By asking yourself questions about state, that informs how the view is built and mutated
    * Keeping this principle in mind, it helps create a more elegant view that reacts to change and state by mutating itself
    * When data changes, the views should reload with the proper data and display properties based on that data
* **Use Auto-layout constraints sparingly, and carefully**
    * Because DHDeclarable was designed as a replacement for Storyboards, you should change your mindset when writing DHDeclarable views.
    * Instead of thinking about constraints, think about layouts, and how you can leverage stack views to accomplish a layout.
* **If all else fails: use vanilla UIKit syntax**
    * If all else fails, all DHDeclarable code can be re-written using boilerplate UIKit code or even storyboards/nibs.

### Continue learning about `DHDeclarable` in the next article: [Debugging Issues](Debugging-DHDeclarable-Issues.md), or view the [map](map.md).
