//
//  Builder+UIView.swift
//  GeonuUIKit
//
//  Created by 전건우 on 2020/01/09.
//

import UIKit

extension UIView: Buildable {}

extension Builder where Product: UIView {
    // MARK: Setup methods of the view.
    
    /**
     Adds the view as a subview of the superview and return the view.
     */
    public func superview(_ superview: UIView) -> Self {
        superview.addSubview(product)
        return self
    }
    
    public func subview(_ view: UIView) -> Self {
        self.product.addSubview(view)
        return self
    }
    
    public func subviews(_ views: [UIView]) -> Self {
        views.forEach(self.product.addSubview)
        return self
    }
    
    public func alpha(_ alpha: CGFloat) -> Self {
        self.product.alpha = alpha
        return self
    }
    
    public func isHidden(_ isHidden: Bool) -> Self {
        self.product.isHidden = isHidden
        return self
    }
    
    public func clipsToBounds(_ clipsToBounds: Bool) -> Self {
        self.product.clipsToBounds = clipsToBounds
        return self
    }
    
    public func backgroundColor(_ backgroundColor: UIColor) -> Self {
        self.product.backgroundColor = backgroundColor
        return self
    }
    
    public func tintColor(_ tintColor: UIColor) -> Self {
        self.product.tintColor = tintColor
        return self
    }
    
    public func contentMode(_ contentMode: UIView.ContentMode) -> Self {
        self.product.contentMode = contentMode
        return self
    }
    
    // MARK: Setup methods of the view's layer.
    
    /**
     Apply rounded corners of the layer's background of the view and return the view.
     */
    public func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        self.product.layer.cornerRadius = cornerRadius
        return self
    }
    
    /**
     Setup the border of the corner of the view's layer and return the view.
     
     - parameters:
        - color: The color of the layer’s border. The default value of this property is an opaque black color.
        - width: The width of the layer’s border. The default value of this property is 0.0.
     */
    public func border(_ color: UIColor? = .rgba(0, 0, 0, 0), _ width: CGFloat = 0.0) -> Self {
        self.product.layer.borderColor = color?.cgColor
        self.product.layer.borderWidth = width
        return self
    }
    
    /**
     Setup the shadow of the background of the view's layer and return the view.
     
     - parameters:
        - color: The color of the layer’s shadow. The default value of this property is an opaque black color.
        - opacity: The opacity of the layer’s shadow. The value in this property must be in the range 0.0 (transparent) to 1.0 (opaque). The default value of this property is 0.0.
        - offset: The offset (in points) of the layer’s shadow. The default value of this property is (0.0, -3.0).
        - radius: The blur radius (in points) used to render the layer’s shadow. You specify the radius The default value of this property is 3.0.
     */
    public func shadow(color: UIColor? = .rgba(0, 0, 0, 0), opacity: CGFloat = 0.0, offset: CGPoint = .init(x: 0.0, y: -3.0), radius: CGFloat = 3.0) -> Self {
        self.product.layer.shadowColor = color?.cgColor
        self.product.layer.shadowOpacity = .init(opacity)
        self.product.layer.shadowOffset = .init(width: offset.x, height: offset.y)
        self.product.layer.shadowRadius = radius
        return self
    }
    
    // MARK: Setup methods of the constraints of the view.
    
    public func positionConstraint(from thisConstraintType: NSLayoutConstraint.PositionType? = nil, to targetConstraintType: NSLayoutConstraint.PositionType, of targetView: UIView? = nil, offset: CGFloat = .zero) -> Self {
        guard let targetView: UIView = targetView ?? self.product.superview, self.product.isSharingCommonAncestorView(with: targetView) else {
            return self
        }
        self.product.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([.init(item: self.product, attribute: (thisConstraintType ?? targetConstraintType).attribute, relatedBy: .equal, toItem: targetView, attribute: targetConstraintType.attribute, multiplier: 1, constant: offset)])
        return self
    }
    
    public func sizeConstraint(to constraintType: NSLayoutConstraint.SizeType, value: CGFloat) -> Self {
        self.product.translatesAutoresizingMaskIntoConstraints = false
        self.product.addConstraint(.init(item: self.product, attribute: constraintType.attribute, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: value))
        return self
    }
}
