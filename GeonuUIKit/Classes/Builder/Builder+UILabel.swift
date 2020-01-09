//
//  Builder+UILabel.swift
//  GeonuUIKit
//
//  Created by 전건우 on 2020/01/09.
//

import UIKit

extension Builder where Product: UILabel {
    public func text(_ text: String) -> Self {
        self.product.text = text
        return self
    }
    
    public func textColor(_ textColor: UIColor) -> Self {
        self.product.textColor = textColor
        return self
    }
    
    public func font(_ font: UIFont) -> Self {
        self.product.font = font
        return self
    }
    
    public func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        self.product.textAlignment = textAlignment
        return self
    }
    
    public func numberOfLines(_ numberOfLines: Int) -> Self {
        self.product.numberOfLines = numberOfLines
        return self
    }
    
    public func attributedText(_ attributedText: NSAttributedString) -> Self {
        self.product.attributedText = attributedText
        return self
    }
    
    public func textWithAttributes(text: String, attributes: NSAttributedString.TextAttributes) -> Self {
        self.product.attributedText = .init(string: text, attributes: attributes.dict)
        return self
    }
}
