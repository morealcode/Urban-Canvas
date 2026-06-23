//
//  StringMarkdown.swift
//  Urban Canvas
//
//  Created by morealcode on 23/06/2026.
//

import Foundation

extension String {
    var markdownAttributed: AttributedString {
        do {
            return try AttributedString(markdown: self)
        } catch {
            return AttributedString(self)
        }
    }
}
