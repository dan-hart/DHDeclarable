// DHDViewControlling.swift

import Foundation
import UIKit

/// Conform to specify how a view show be controller
public protocol DHDViewControlling {
    /// Override this property to render in the subclass
    var body: UIView { get set }

    /// handles all state updates
    /// - Returns: the updated view
    @discardableResult func reloadView() -> UIView
}
