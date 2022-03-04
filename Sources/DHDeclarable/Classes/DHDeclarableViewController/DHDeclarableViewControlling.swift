// DHDeclarableViewControlling.swift

import Foundation
import UIKit

protocol DHDeclarableViewControlling {
    var body: UIView { get set }

    @discardableResult
    func reloadView() -> UIView
}
