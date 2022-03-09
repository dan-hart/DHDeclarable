//
//  UIViewController+Preview.swift
//
//
//  Created by Dan Hart on 3/8/22.
//

import Foundation
import SwiftUI
import UIKit

/// Previews are not available in iOS less than 13, sorry folks. Take it up with Apple.

@available(iOS 13, *) public extension UIViewController {
    struct Preview: UIViewRepresentable {
        // MARK: - Public
        public typealias UIViewType = UIView

        public func makeUIView(context _: Context) -> UIView {
            return viewController.view
        }

        public func updateUIView(_: UIView, context _: Context) {}

        // MARK: - Internal
        let viewController: UIViewController
    }

    /// Example usage:
    /// ```
    /// // MARK: - Preview
    /// import SwiftUI
    /// struct UIViewControllerPreview: PreviewProvider {
    ///    static var previews: some View {
    ///        UIViewController().toPreview()
    ///    }
    /// }
    /// ```
    func toPreview() -> some View {
        Preview(viewController: self)
    }
}
