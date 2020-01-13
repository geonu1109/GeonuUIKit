//
//  NSAttributedString.swift
//  GeonuUIKit
//
//  Created by 전건우 on 2020/01/09.
//

import Foundation

extension NSAttributedString {
    public struct TextAttributes {
        var font: UIFont? = nil
        var foregroundColor: UIColor? = .black
        var backgroundColor: UIColor? = nil
        var kern: NSNumber? = 0
        var underlineStyle: NSUnderlineStyle? = nil
        var underlineColor: UIColor? = nil
        
        var dict: [NSAttributedString.Key: Any] {
            var result: [NSAttributedString.Key: Any] = [:]
            if let font: UIFont = self.font {
                result[.font] = font
            }
            if let foregroundColor: UIColor = self.foregroundColor {
                result[.foregroundColor] = foregroundColor
            }
            if let backgroundColor: UIColor = self.backgroundColor {
                result[.backgroundColor] = backgroundColor
            }
            if let kern: NSNumber = self.kern {
                result[.kern] = kern
            }
            if let underlineStyle: NSUnderlineStyle = self.underlineStyle {
                result[.underlineStyle] = underlineStyle
            }
            if let underlineColor: UIColor = self.underlineColor {
                result[.underlineColor] = underlineColor
            }
            return result
        }
    }
}
