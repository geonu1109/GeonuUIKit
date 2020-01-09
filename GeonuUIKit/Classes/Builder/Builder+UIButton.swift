//
//  Builder+UIButton.swift
//  GeonuUIKit
//
//  Created by 전건우 on 2020/01/09.
//

import UIKit

extension Builder where Product: UIButton {
    @discardableResult
    public func title(_ title: String, for state: UIControl.State = .normal) -> Self {
        self.product.setTitle(title, for: state)
        return self
    }
    
    @discardableResult
    public func titleColor(_ titleColor: UIColor, for state: UIControl.State = .normal) -> Self {
        self.product.setTitleColor(titleColor, for: state)
        return self
    }
    
    @discardableResult
    public func font(_ font: UIFont) -> Self {
        self.product.titleLabel?.font = font
        return self
    }
    
    @discardableResult
    public func image(_ image: UIImage, for state: UIControl.State = .normal) -> Self {
        self.product.setImage(image, for: state)
        return self
    }
}
