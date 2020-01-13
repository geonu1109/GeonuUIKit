//
//  ChainingSetter+UILabel.swift
//  GeonuUIKit
//
//  Created by Geonu Jeon on 2020/01/10.
//

import UIKit

extension ChainingSetter where Component: UILabel {
    @discardableResult
    public func setText(_ text: String) -> Self {
        self.component.text = text
        return self
    }
    
    @discardableResult
    public func setTextColor(_ textColor: UIColor) -> Self {
        self.component.textColor = textColor
        return self
    }
    
    @discardableResult
    public func setFont(_ font: UIFont) -> Self {
        self.component.font = font
        return self
    }
    
    @discardableResult
    public func setTextAlignment(_ textAlignment: NSTextAlignment) -> Self {
        self.component.textAlignment = textAlignment
        return self
    }
    
    @discardableResult
    public func setNumberOfLines(_ numberOfLines: Int) -> Self {
        self.component.numberOfLines = numberOfLines
        return self
    }
    
    @discardableResult
    public func setAttributedText(_ attributedText: NSAttributedString) -> Self {
        self.component.attributedText = attributedText
        return self
    }
    
    @discardableResult
    public func setTextWithAttributes(text: String, attributes: NSAttributedString.TextAttributes) -> Self {
        self.component.attributedText = .init(string: text, attributes: attributes.dict)
        return self
    }
}
