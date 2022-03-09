//
//  DHDScrollView.swift
//
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
import UIKit

// MARK: - DHDScrollView
/// Vertically scrolling view that uses a stack view to handle subviews
open class DHDScrollView: UIView {
    // MARK: - Lifecycle
    // MARK: - Initialization

    public init(fromSuper superView: UIView) {
        super.init(frame: superView.frame)
        scrollView.delegate = self
    }

    @available(*, unavailable) public required init(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    /// Create this view with a predetermined array of views
    /// - Parameters:
    ///   - superView: the superview to render this view in
    public convenience init(fromSuper superView: UIView, _ byAddingArrangedSubviews: @escaping () -> [UIView?]) {
        self.init(fromSuper: superView)
        stack.add(arrangedSubviews: byAddingArrangedSubviews())
    }

    /// Create this view with a predetermined array of views
    /// - Parameters:
    ///   - superView: the superview to render this view in
    ///   - views: the predetermined array of views to render
    public convenience init(fromSuper superView: UIView, with views: [UIView]) {
        self.init(fromSuper: superView)
        stack.add(arrangedSubviews: views)
    }

    /// Create a scrollable view dynamically from a collection
    /// - Parameters:
    ///   - superView: the superview to render this view into
    ///   - array: the array of data to iterate
    ///   - style: how should dividers be displayed
    ///   - convertToView: closure to call on each element in the array to convert it to a view
    public convenience init<T>(fromSuper superView: UIView, forEach array: [T], style: UIStackView.DividerStyle = .innerOuter, convertToView: @escaping (T) -> UIView) {
        self.init(fromSuper: superView)
        stack.forEach(array, style: style, convertToView: convertToView)
    }

    // MARK: - Public
    public var viewsDidBecomeVisible: (([UIView]) -> Void)?

    // MARK: - Properties

    public var scrollView = UIScrollView(frame: CGRect.zero).declaredWith { instance in
        instance.translatesAutoresizingMaskIntoConstraints = false
        instance.layoutMargins = .zero
    }

    public var stack = UIStackView(frame: CGRect.zero).declaredWith { instance in
        instance.translatesAutoresizingMaskIntoConstraints = false
        instance.axis = .vertical // ScrollableView is designed only to scroll on a vertical axis
    }

    override public func didMoveToSuperview() {
        super.didMoveToSuperview()

        translatesAutoresizingMaskIntoConstraints = false
        clipsToBounds = true

        addSubview(scrollView)
        scrollView.addSubview(stack)

        setNeedsUpdateConstraints()
    }

    // MARK: - Methods

    override public func updateConstraints() {
        super.updateConstraints()

        if !didSetupConstraints {
            scrollView.topAnchor.constraint(equalTo: topAnchor).isActive = true
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
            scrollView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

            stack.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
            stack.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
            stack.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
            stack.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true

            stack.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true

            didSetupConstraints = true
        }
    }

    /// Set the layoutMargins of the Stack
    /// - Parameters:
    ///   - verticalMargin: The top and bottom margins
    ///   - horizontalMargin: The left and right margins
    public func setLayoutMargins(verticalMargin: CGFloat, horizontalMargin: CGFloat) {
        stack.layoutMargins = UIEdgeInsets(top: verticalMargin, left: horizontalMargin, bottom: verticalMargin, right: horizontalMargin)
        stack.isLayoutMarginsRelativeArrangement = true
    }

    // MARK: - Private
    // MARK: - Properties

    private var lastContentOffset: CGFloat = 0
    private var didSetupConstraints = false
}

// MARK: - UIScrollViewDelegate
extension DHDScrollView: UIScrollViewDelegate {
    public func scrollViewDidScroll(_ scrollView: UIScrollView) {
        lastContentOffset = scrollView.contentOffset.y
    }

    public func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        scrollViewDidEndScrolling(scrollView)
    }

    public func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        if !decelerate {
            scrollViewDidEndScrolling(scrollView)
        }
    }

    public func scrollViewDidEndScrolling(_ scrollView: UIScrollView) {
        let views = stack.arrangedSubviews(includingStackViews: true)

        let visibleViews = views.filter { view in
            scrollView.bounds.contains(view.frame)
        }

        viewsDidBecomeVisible?(visibleViews)
    }
}

// MARK: - Convenience Extensions

public extension DHDScrollView {
    /// Set the margin of this scroll view
    /// - Parameters:
    ///   - verticalMargin: CGFloat of the vertical margin
    ///   - horizontalMargin: CGFloat of the horizontal margin
    /// - Returns: this scroll view
    @discardableResult func setMargin(verticalMargin: CGFloat, horizontalMargin: CGFloat) -> Self {
        setLayoutMargins(verticalMargin: verticalMargin, horizontalMargin: horizontalMargin)
        return self
    }

    /// Set the `.distribution` property of the inner stack view
    /// - Parameter distribution: the stack view distribution
    /// - Returns: this scroll view
    @discardableResult func distributed(_ distribution: UIStackView.Distribution) -> Self {
        stack.distribution = distribution
        return self
    }

    /// Set the `.spacing` property of the inner stack view
    /// - Parameter spacing: the stack view spacing
    /// - Returns: this scroll view
    @discardableResult func spacing(_ spacing: CGFloat) -> Self {
        stack.spacing = spacing
        return self
    }
}
