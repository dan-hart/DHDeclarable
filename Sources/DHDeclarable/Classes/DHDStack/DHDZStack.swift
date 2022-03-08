//
//  DHDZStack.swift
//  
//
//  Created by Dan Hart on 3/8/22.
//

import Foundation
import UIKit

open class DHDZStack: DHDViewComponent {
    public convenience init(renderingMode: DHDViewControllerContentRenderingMode = .pin, _ views: @escaping () -> [UIView?]) {
        self.init()
        
        for view in views() where view != nil {
            guard let view = view else {
                continue
            }

            self.addSubview(view)
            switch renderingMode {
            case .pin:
                view.pin(to: self)
            case .center:
                view.center(to: self, heightLessThanOrEqualToConstant: 0, widthLessThanOrEqualToConstant: 0)
            }
        }
    }
    
    override var asStack: DHDStack? {
        DHDStack(arrangedSubviews: subviews)
    }
}
