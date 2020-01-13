//
//  ChainingSetter+UIActivityIndicator.swift
//  GeonuUIKit
//
//  Created by 전건우 on 2020/01/13.
//

import UIKit

extension ChainingSetter where Component: UIActivityIndicatorView {
    @discardableResult
    public func setStyle(_ style: UIActivityIndicatorView.Style) -> Self {
        self.component.style = style
        return self
    }
    
    @discardableResult
    public func setHideWhenStopped(_ hidesWhenStopped: Bool) -> Self {
        self.component.hidesWhenStopped = hidesWhenStopped
        return self
    }
    
    @discardableResult
    public func setColor(_ color: UIColor) -> Self {
        self.component.color = color
        return self
    }
}
