//
//  ChainingSetter+TextAttributes.swift
//  GeonuUIKit
//
//  Created by 전건우 on 2020/01/13.
//

import UIKit

extension NSAttributedString.TextAttributes: ChaningSettable {}

extension ChainingSetter where Component: NSAttributedString.TextAttributes {
    @discardableResult
    public func setFont(_ font: UIFont) -> Self {
        self.component.font = font
        return self
    }
    
    @discardableResult
    public func setForegroundColor(_ foregroundColor: UIColor) -> Self {
        self.component.foregroundColor = foregroundColor
        return self
    }
    
    @discardableResult
    public func setBackgroundColor(_ backgroundColor: UIColor) -> Self {
        self.component.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    public func setKern(_ kern: NSNumber) -> Self {
        self.component.kern = kern
        return self
    }
    
    @discardableResult
    public func setUnderlineStyle(_ underlineStyle: NSUnderlineStyle) -> Self {
        self.component.underlineStyle = underlineStyle.rawValue
        return self
    }
    
    @discardableResult
    public func setUnderlineColor(_ underlineColor: UIColor) -> Self {
        self.component.underlineColor = underlineColor
        return self
    }
}
