//
//  DHDVStack.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation
import UIKit

class DHDVStack: DHDStack {
    override init(frame: CGRect) {
        super.init(frame: frame)
        axis = .vertical
    }
    
    override func setup(distribution: UIStackView.Distribution = .fill, spacing: CGFloat = 0, alignment: UIStackView.Alignment? = nil, tag: Int? = nil) {
        super.setup(distribution: distribution, spacing: spacing, alignment: alignment, tag: tag)

        axis = .vertical
    }
}
