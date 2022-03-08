//
//  DHDZStack.swift
//  
//
//  Created by Dan Hart on 3/8/22.
//

import Foundation
import UIKit

open class DHDZStack: DHDViewComponent {
    public convenience init(_ views: @escaping () -> [UIView?]) {
        self.init()
        
        for view in views() where view != nil {
            guard let view = view else {
                continue
            }

            self.addSubview(view)
            view.pin(to: self)
        }
    }
    
    override var asStack: DHDStack? {
        DHDStack(arrangedSubviews: subviews)
    }
}
