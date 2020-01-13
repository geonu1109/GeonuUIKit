//
//  ChainingSetter+UISwitch.swift
//  GeonuUIKit
//
//  Created by 전건우 on 2020/01/13.
//

import UIKit

extension ChainingSetter where Component: UISwitch {
    @discardableResult
    public func setOnTintColor(_ onTintColor: UIColor?) -> Self {
        self.component.onTintColor = onTintColor
        return self
    }

    @discardableResult
    public func setThumbTintColor(_ thumbTintColor: UIColor?) -> Self {
        self.component.thumbTintColor = thumbTintColor
        return self
    }

    
    @discardableResult
    public func setOnImage(_ onImage: UIImage?) -> Self {
        self.component.onImage = onImage
        return self
    }
    
    @discardableResult
    public func setOffImage(_ offImage: UIImage?) -> Self {
        self.component.offImage = offImage
        return self
    }
    
    @discardableResult
    public func setIsOn(_ isOn: Bool) -> Self {
        self.component.isOn = isOn
        return self
    }
    
    @discardableResult
    public func setOn(_ on: Bool, animated: Bool) -> Self {
        self.component.setOn(on, animated: animated)
        return self
    }
}
