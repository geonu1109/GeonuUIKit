//
//  UILabel.swift
//  GeonuUIKit
//
//  Created by Geonu Jeon on 2020/01/08.
//

import UIKit

extension UILabel {
    @discardableResult
    public func withText(_ text: String) -> Self {
        self.text = text
        return self
    }
    
    @discardableResult
    public func withTextColor(_ textColor: UIColor) -> Self {
        self.textColor = textColor
        return self
    }
    
    @discardableResult
    public func withFont(_ font: UIFont) -> Self {
        self.font = font
        return self
    }
    
    @discardableResult
    public func withTextAlignment(_ textAlignment: NSTextAlignment) -> Self {
        self.textAlignment = textAlignment
        return self
    }
    
    @discardableResult
    public func withNumberOfLines(_ numberOfLines: Int) -> Self {
        self.numberOfLines = numberOfLines
        return self
    }
    
    @discardableResult
    public func withAttributedText(_ attributedText: NSAttributedString) -> Self {
        self.attributedText = attributedText
        return self
    }
    
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
    
    @discardableResult
    public func withTextAndAttributes(text: String, attributes: TextAttributes) -> Self {
        self.attributedText = .init(string: text, attributes: attributes.dict)
        return self
    }
}
