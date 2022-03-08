//
//  String+inQuotes.swift
//  
//
//  Created by Dan Hart on 3/7/22.
//

import Foundation

public extension String {
    /// put this string in quotes
    var inQuotes: String {
        "\"\(self)\""
    }
}
