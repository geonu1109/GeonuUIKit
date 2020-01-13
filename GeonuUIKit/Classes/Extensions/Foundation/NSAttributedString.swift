//
//  NSAttributedString.swift
//  GeonuUIKit
//
//  Created by 전건우 on 2020/01/09.
//

import Foundation

extension NSAttributedString {
    public class TextAttributes {
        public var font: UIFont? = nil
        public var foregroundColor: UIColor? = .black
        public var backgroundColor: UIColor? = nil
        public var kern: NSNumber? = 0
        public var underlineStyle: NSUnderlineStyle? = nil
        public var underlineColor: UIColor? = nil
        
        public var dict: [NSAttributedString.Key: Any] {
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
        
        public init(font: UIFont? = nil, foregroundColor: UIColor? = nil, backgroundColor: UIColor? = nil, kern: NSNumber? = 0, underlineStyle: NSUnderlineStyle? = nil, underlineColor: UIColor? = nil) {
            self.font = font
            self.foregroundColor = foregroundColor
            self.backgroundColor = backgroundColor
            self.kern = kern
            self.underlineStyle = underlineStyle
            self.underlineColor = underlineColor
        }
    }
}
