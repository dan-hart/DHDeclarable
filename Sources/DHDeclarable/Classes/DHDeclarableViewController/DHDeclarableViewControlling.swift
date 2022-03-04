// DHDeclarableViewControlling.swift

import Foundation
import UIKit

public protocol DHDeclarableViewControlling {
    var body: UIView { get set }

    @discardableResult func reloadView() -> UIView
}
