// DHDViewControlling.swift

import Foundation
import UIKit

public protocol DHDViewControlling {
    var body: UIView { get set }

    @discardableResult func reloadView() -> UIView
}
