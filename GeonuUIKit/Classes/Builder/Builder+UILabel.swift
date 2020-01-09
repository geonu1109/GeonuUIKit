//
//  Builder+UILabel.swift
//  GeonuUIKit
//
//  Created by 전건우 on 2020/01/09.
//

import UIKit

extension Builder where Product: UILabel {
    @discardableResult
    public func text(_ text: String) -> Self {
        self.product.text = text
        return self
    }
    
    @discardableResult
    public func textColor(_ textColor: UIColor) -> Self {
        self.product.textColor = textColor
        return self
    }
    
    @discardableResult
    public func font(_ font: UIFont) -> Self {
        self.product.font = font
        return self
    }
    
    @discardableResult
    public func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        self.product.textAlignment = textAlignment
        return self
    }
    
    @discardableResult
    public func numberOfLines(_ numberOfLines: Int) -> Self {
        self.product.numberOfLines = numberOfLines
        return self
    }
    
    @discardableResult
    public func attributedText(_ attributedText: NSAttributedString) -> Self {
        self.product.attributedText = attributedText
        return self
    }
    
    @discardableResult
    public func textWithAttributes(text: String, attributes: NSAttributedString.TextAttributes) -> Self {
        self.product.attributedText = .init(string: text, attributes: attributes.dict)
        return self
    }
}
