//
//  UIButton.swift
//  GeonuUIKit
//
//  Created by Geonu Jeon on 2020/01/08.
//

import UIKit

extension UIButton {
    @discardableResult
    public func withTitle(_ title: String, for state: State = .normal) -> Self {
        self.setTitle(title, for: state)
        return self
    }
    
    @discardableResult
    public func withTitleColor(_ titleColor: UIColor, for state: State = .normal) -> Self {
        self.setTitleColor(titleColor, for: state)
        return self
    }
    
    @discardableResult
    public func withFont(_ font: UIFont) -> Self {
        self.titleLabel?.font = font
        return self
    }
    
    @discardableResult
    public func withImage(_ image: UIImage, for state: State = .normal) -> Self {
        self.setImage(image, for: state)
        return self
    }
}
