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

@available(iOS 13, *)
extension UIViewController {
    private struct Preview: UIViewRepresentable {
        typealias UIViewType = UIView
        let viewController: UIViewController
        
        func makeUIView(context: Context) -> UIView {
            return viewController.view
        }
        
        func updateUIView(_ uiView: UIView, context: Context) {
        }
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
