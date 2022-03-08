//
//  UIView+Preview.swift
//  
//
//  Created by Dan Hart on 3/8/22.
//

import Foundation
import SwiftUI
import UIKit

/// Previews are not available in iOS less than 13, sorry folks. Take it up with Apple.

@available(iOS 13, *)
public extension UIView {
    private struct Preview: UIViewRepresentable {
        typealias UIViewType = UIView
        let view: UIView
        
        func makeUIView(context: Context) -> UIView {
            return view
        }
        
        func updateUIView(_ uiView: UIView, context: Context) {
        }
    }
    
    /// Example usage:
    /// ```
    /// // MARK: - Preview
    /// import SwiftUI
    /// struct UIViewPreview: PreviewProvider {
    ///    static var previews: some View {
    ///        UIView().toPreview()
    ///    }
    /// }
    /// ```
    func toPreview() -> some View {
        Preview(view: self)
    }
}
