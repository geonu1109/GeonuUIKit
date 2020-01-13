//
//  UIChainingSetter+UIButton.swift
//  GeonuUIKit
//
//  Created by Geonu Jeon on 2020/01/10.
//

import UIKit

extension UIChainingSetter where Component: UIButton {
    @discardableResult
    public func setTitle(_ title: String, for state: UIControl.State = .normal) -> Self {
        self.component.setTitle(title, for: state)
        return self
    }
    
    @discardableResult
    public func setTitleColor(_ titleColor: UIColor, for state: UIControl.State = .normal) -> Self {
        self.component.setTitleColor(titleColor, for: state)
        return self
    }
    
    @discardableResult
    public func configureTitleLabel(_ configuration: (UILabel) -> Void, completion: ((Bool) -> Void)? = nil) -> Self {
        guard let titleLabel: UILabel = self.component.titleLabel else {
            completion?(false)
            return self
        }
        configuration(titleLabel)
        completion?(true)
        return self
    }
    
    @discardableResult
    public func setFont(_ font: UIFont) -> Self {
        self.configureTitleLabel({ $0.chainingSetter.setFont(font) })
        return self
    }
    
    @discardableResult
    public func setImage(_ image: UIImage, for state: UIControl.State = .normal) -> Self {
        self.component.setImage(image, for: state)
        return self
    }
    
    @discardableResult
    public func configureImageView(_ configuration: (UIImageView) -> Void, completion: ((Bool) -> Void)? = nil) -> Self {
        guard let imageView: UIImageView = self.component.imageView else {
            completion?(false)
            return self
        }
        configuration(imageView)
        completion?(true)
        return self
    }
    
    @discardableResult
    public func setSemanticContentAttribute(_ semanticContentAttribute: UISemanticContentAttribute) -> Self {
        self.component.semanticContentAttribute = semanticContentAttribute
        return self
    }
}
