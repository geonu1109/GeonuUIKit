//
//  Builder+UIStackView.swift
//  GeonuUIKit
//
//  Created by 전건우 on 2020/01/09.
//

import UIKit

extension Builder where Product: UIStackView {
    public func addArrangedSubview(_ view: UIView) -> Self {
        self.product.addArrangedSubview(view)
        return self
    }
    
    public func addArrangedSubviews(_ views: [UIView]) -> Self {
        views.forEach(self.product.addArrangedSubview)
        return self
    }
    
    public func removeArrangedSubview(_ view: UIView) -> Self {
        self.product.removeArrangedSubview(view)
        return self
    }
    
    public func addArrangedSubview(_ view: UIView, at stackIndex: Int) -> Self {
        self.product.insertArrangedSubview(view, at: stackIndex)
        return self
    }
    
    public func axis(_ axis: NSLayoutConstraint.Axis) -> Self {
        self.product.axis = axis
        return self
    }
    
    public func distribution(_ distribution: UIStackView.Distribution) -> Self {
        self.product.distribution = distribution
        return self
    }
    
    public func alignment(_ alignment: UIStackView.Alignment) -> Self {
        self.product.alignment = alignment
        return self
    }
    
    public func spacing(_ spacing: CGFloat) -> Self {
        self.product.spacing = spacing
        return self
    }
}
