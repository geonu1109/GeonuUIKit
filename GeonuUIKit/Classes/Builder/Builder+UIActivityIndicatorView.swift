//
//  Builder+UIActivityIndicatorView.swift
//  GeonuUIKit
//
//  Created by 전건우 on 2020/01/09.
//

import UIKit

extension Builder where Product: UIActivityIndicatorView {
    public func style(_ style: UIActivityIndicatorView.Style) -> Self {
        self.product.style = style
        return self
    }
    
    public func hideWhenStopped(_ hidesWhenStopped: Bool) -> Self {
        self.product.hidesWhenStopped = hidesWhenStopped
        return self
    }
    
    public func color(_ color: UIColor) -> Self {
        self.product.color = color
        return self
    }
}
