//
//  UIChainingSetter+UIView.swift
//  GeonuUIKit
//
//  Created by Geonu Jeon on 2020/01/10.
//

import UIKit

extension UIView: UIChaningSettable {}

extension UIChainingSetter where Component: UIView {
    // MARK: Setup methods of the view.
    
    /**
     Adds the view as a subview of the superview and return the view.
     */
    @discardableResult
    public func setSuperview(_ superview: UIView) -> Self {
        superview.addSubview(component)
        return self
    }
    
    @discardableResult
    public func addSubview(_ view: UIView) -> Self {
        self.component.addSubview(view)
        return self
    }
    
    @discardableResult
    public func addSubviews(_ views: [UIView]) -> Self {
        views.forEach(self.component.addSubview)
        return self
    }
    
    @discardableResult
    public func setAlpha(_ alpha: CGFloat) -> Self {
        self.component.alpha = alpha
        return self
    }
    
    @discardableResult
    public func setIsHidden(_ isHidden: Bool) -> Self {
        self.component.isHidden = isHidden
        return self
    }
    
    @discardableResult
    public func setClipsToBounds(_ clipsToBounds: Bool) -> Self {
        self.component.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    public func setBackgroundColor(_ backgroundColor: UIColor) -> Self {
        self.component.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    public func setTintColor(_ tintColor: UIColor) -> Self {
        self.component.tintColor = tintColor
        return self
    }
    
    @discardableResult
    public func setContentMode(_ contentMode: UIView.ContentMode) -> Self {
        self.component.contentMode = contentMode
        return self
    }
    
    // MARK: Setup methods of the view's layer.
    
    /**
     Apply rounded corners of the layer's background of the view and return the view.
     */
    @discardableResult
    public func setCornerRadius(_ cornerRadius: CGFloat) -> Self {
        self.component.layer.cornerRadius = cornerRadius
        return self
    }
    
    /**
     Setup the border of the corner of the view's layer and return the view.
     
     - parameters:
        - color: The color of the layer’s border. The default value of this property is an opaque black color.
        - width: The width of the layer’s border. The default value of this property is 0.0.
     */
    @discardableResult
    public func setBorder(_ color: UIColor? = .rgba(0, 0, 0, 0), _ width: CGFloat = 0.0) -> Self {
        self.component.layer.borderColor = color?.cgColor
        self.component.layer.borderWidth = width
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
    @discardableResult
    public func setShadow(color: UIColor? = .rgba(0, 0, 0, 0), opacity: CGFloat = 0.0, offset: CGPoint = .init(x: 0.0, y: -3.0), radius: CGFloat = 3.0) -> Self {
        self.component.layer.shadowColor = color?.cgColor
        self.component.layer.shadowOpacity = .init(opacity)
        self.component.layer.shadowOffset = .init(width: offset.x, height: offset.y)
        self.component.layer.shadowRadius = radius
        return self
    }
    
    // MARK: Setup methods of the constraints of the view.
    
    @discardableResult
    public func addPositionConstraint(from thisConstraintType: NSLayoutConstraint.PositionType? = nil, to targetConstraintType: NSLayoutConstraint.PositionType, of targetView: UIView? = nil, offset: CGFloat = .zero, completion: ((Bool) -> Void)? = nil) -> Self {
        guard let targetView: UIView = targetView ?? self.component.superview, self.component.isSharingCommonAncestorView(with: targetView) else {
            completion?(false)
            return self
        }
        self.component.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([.init(item: self.component, attribute: (thisConstraintType ?? targetConstraintType).attribute, relatedBy: .equal, toItem: targetView, attribute: targetConstraintType.attribute, multiplier: 1, constant: offset)])
        completion?(true)
        return self
    }
    
    @discardableResult
    public func addSizeConstraint(to constraintType: NSLayoutConstraint.SizeType, value: CGFloat) -> Self {
        self.component.translatesAutoresizingMaskIntoConstraints = false
        self.component.addConstraint(.init(item: self.component, attribute: constraintType.attribute, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: value))
        return self
    }
}
