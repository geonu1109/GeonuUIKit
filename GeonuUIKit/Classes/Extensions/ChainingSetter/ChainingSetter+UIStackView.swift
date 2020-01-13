//
//  ChainingSetter+UIStackView.swift
//  GeonuUIKit
//
//  Created by Geonu Jeon on 2020/01/10.
//

import UIKit

extension ChainingSetter where Component: UIStackView {
    @discardableResult
    public func addArrangedSubview(_ view: UIView) -> Self {
        self.component.addArrangedSubview(view)
        return self
    }
    
    @discardableResult
    public func addArrangedSubviews(_ views: [UIView]) -> Self {
        views.forEach(self.component.addArrangedSubview)
        return self
    }
    
    @discardableResult
    public func removeArrangedSubview(_ view: UIView) -> Self {
        self.component.removeArrangedSubview(view)
        return self
    }
    
    @discardableResult
    public func addArrangedSubview(_ view: UIView, at stackIndex: Int) -> Self {
        self.component.insertArrangedSubview(view, at: stackIndex)
        return self
    }
    
    @discardableResult
    public func setAxis(_ axis: NSLayoutConstraint.Axis) -> Self {
        self.component.axis = axis
        return self
    }
    
    @discardableResult
    public func setDistribution(_ distribution: UIStackView.Distribution) -> Self {
        self.component.distribution = distribution
        return self
    }
    
    @discardableResult
    public func setAlignment(_ alignment: UIStackView.Alignment) -> Self {
        self.component.alignment = alignment
        return self
    }
    
    @discardableResult
    public func setSpacing(_ spacing: CGFloat) -> Self {
        self.component.spacing = spacing
        return self
    }
}
