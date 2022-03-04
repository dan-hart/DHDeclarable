// DHDeclarableViewController.swift

import Foundation
import UIKit

class DHDeclarableViewController: UIViewController, DHDeclarableViewControlling {
    // MARK: - Properties
    let viewTag = Int.random(in: Int.min ... Int.max)

    var verticalPadding: CGFloat { 0 }
    var horizontalPadding: CGFloat { 0 }

    var body: UIView
    var titled: String? { nil }

    var renderingMode: DHDeclarableViewControllerContentRenderingMode { .pin }

    /// Override this property to use a custom background color
    /// use this sparingly, as we would like to move towards dark mode
    var backgroundColor: UIColor? { nil }

    /// Given the overridable background color, determine
    /// what it should be (default to system background)
    private var background: UIColor? {
        if #available(iOS 13.0, *) {
            return backgroundColor == nil ? .systemBackground : backgroundColor
        } else {
            return backgroundColor == nil ? .white : backgroundColor
        }
    }

    // MARK: - Initialization
    init() {
        body = UIView()
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Methods
    override func loadView() {
        // Purposefully not calling super
        // when programmatically creating this view
        // super.loadView()

        view = UIView()
        view.backgroundColor = background

        // Navigation Bar Style Updates Here

        reloadView()
    }

    @discardableResult func reloadView() -> UIView {
        let bodyView = body
        bodyView.backgroundColor = background
        // If you get this error set `.tag` of your top-level view to `viewTag`
        precondition(body.tag == viewTag, "A \(DHDeclarableViewController.self)'s body must be tagged in order to be reloaded properly.")
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

    // MARK: - Lifecycle
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)

        reloadView()
    }
}