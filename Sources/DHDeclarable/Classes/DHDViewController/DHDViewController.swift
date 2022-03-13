// DHDViewController.swift

import Foundation
#if canImport(UIKit)
    import UIKit

    open class DHDViewController: UIViewController, DHDViewControlling {
        // MARK: - Lifecycle
        // MARK: - Initialization

        public init() {
            body = UIView()
            super.init(nibName: nil, bundle: nil)
        }

        public required init?(coder: NSCoder) {
            return nil
        }

        // MARK: - Open
        /// Override this property to set
        open var body: UIView

        /// Override this property to set
        open var verticalPadding: CGFloat { 0 }

        /// Override this property to set
        open var horizontalPadding: CGFloat { 0 }

        /// Override this property to set
        open var titled: String? { nil }

        /// Override this property to set
        open var renderingMode: DHDViewControllerContentRenderingMode { .pin }

        /// Override this property to use a custom background color
        /// use this sparingly, as we would like to move towards dark mode
        open var backgroundColor: UIColor? { nil }

        // MARK: - Public
        // MARK: - Properties

        /// Make sure to tag the root of `.body` with this value
        public let viewTag = Int.random(in: Int.min ... Int.max)

        // MARK: - Methods

        override public func loadView() {
            // Purposefully not calling super
            // when programmatically creating this view
            // super.loadView()

            view = UIView()
            view.backgroundColor = background

            // Navigation Bar Style Updates Here

            reloadView()
        }

        @discardableResult public func reloadView() -> UIView {
            let bodyView = body
            bodyView.backgroundColor = background
            // If you get this error set `.tag` of your top-level view to `viewTag`
            precondition(body.tag == viewTag, "A \(DHDViewController.self)'s body must be tagged in order to be reloaded properly.")
            // Remove any existing views
            if let viewWithTag = view.viewWithTag(viewTag) {
                viewWithTag.removeFromSuperview()
            }
            view.addSubview(bodyView)
            title = titled

            switch renderingMode {
            case .pin:
                bodyView.pin(to: view, withVerticalPadding: verticalPadding, withHorizontalPadding: horizontalPadding)
            case .center:
                bodyView.center(to: view,
                                heightLessThanOrEqualToConstant: UIScreen.main.bounds.height - (verticalPadding * 2),
                                widthLessThanOrEqualToConstant: UIScreen.main.bounds.width - (horizontalPadding * 2))
            }

            return bodyView
        }

        override public func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
            super.traitCollectionDidChange(previousTraitCollection)

            reloadView()
        }

        // MARK: - Internal
        // MARK: - Color

        var systemBackground: UIColor {
            DHDViewController.systemBackground(from: traitCollection)
        }

        /// Sets the the background color to the system background
        /// for iOS 12 and lower,  manually set to white or black based on light/dark mode.
        static func systemBackground(from traitCollection: UITraitCollection, useSystemBackgroundIfAvailable: Bool = true) -> UIColor {
            if #available(iOS 13, *), useSystemBackgroundIfAvailable {
                return .systemBackground
            } else {
                // Manually set background with black/white
                if traitCollection.userInterfaceStyle == .light {
                    return .white
                } else {
                    return .black
                }
            }
        }

        // MARK: - Private
        /// Given the overridable background color, determine
        /// what it should be (default to system background)
        private var background: UIColor? {
            backgroundColor == nil ? DHDViewController.systemBackground(from: traitCollection) : backgroundColor
        }
    }
#endif
