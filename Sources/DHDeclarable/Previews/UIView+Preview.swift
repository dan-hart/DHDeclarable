//
//  UIView+Preview.swift
//
//
//  Created by Dan Hart on 3/8/22.
//

import Foundation
#if canImport(SwiftUI)
    import SwiftUI
    #if canImport(UIKit)
        import UIKit

        /// Previews are not available in iOS less than 13, sorry folks. Take it up with Apple.
        @available(iOS 13, *) public extension UIView {
            private struct Preview: UIViewRepresentable {
                typealias UIViewType = UIView

                let view: UIView

                func makeUIView(context _: Context) -> UIView {
                    return view
                }

                func updateUIView(_: UIView, context _: Context) {}
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
    #endif
#endif
