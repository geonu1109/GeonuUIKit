//
//  UIView.swift
//  GeonuUIKit
//
//  Created by Geonu Jeon on 2020/01/08.
//

import UIKit

extension UIView {
    // MARK: Setup methods of the view.
    
    /**
     Adds the view as a subview of the superview and return the view.
     */
    @discardableResult
    public func withSuperview(_ superview: UIView) -> Self {
        superview.addSubview(self)
        return self
    }
    
    @discardableResult
    public func withSubview(_ subview: UIView) -> Self {
        self.addSubview(subview)
        return self
    }
    
    @discardableResult
    public func withSubviews(_ subviews: [UIView]) -> Self {
        subviews.forEach(self.addSubview)
        return self
    }
    
    @discardableResult
    public func withAlpha(_ alpha: CGFloat) -> Self {
        self.alpha = alpha
        return self
    }
    
    @discardableResult
    public func withIsHidden(_ isHidden: Bool) -> Self {
        self.isHidden = isHidden
        return self
    }
    
    @discardableResult
    public func withClipsToBounds(_ clipsToBounds: Bool) -> Self {
        self.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    public func withBackgroundColor(_ backgroundColor: UIColor) -> Self {
        self.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    public func withTintColor(_ tintColor: UIColor) -> Self {
        self.tintColor = tintColor
        return self
    }
    
    @discardableResult
    public func withContentMode(_ contentMode: ContentMode) -> Self {
        self.contentMode = contentMode
        return self
    }
    
    // MARK: Setup methods of the view's layer.
    
    /**
     Apply rounded corners of the layer's background of the view and return the view.
     */
    @discardableResult
    public func withCornerRadius(_ cornerRadius: CGFloat) -> Self {
        self.layer.cornerRadius = cornerRadius
        return self
    }
    
    /**
     Setup the border of the corner of the view's layer and return the view.
     
     - parameters:
        - color: The color of the layer’s border. The default value of this property is an opaque black color.
        - width: The width of the layer’s border. The default value of this property is 0.0.
     */
    @discardableResult
    public func withBorder(_ color: UIColor? = .rgba(0, 0, 0, 0), _ width: CGFloat = 0.0) -> Self {
        self.layer.borderColor = color?.cgColor
        self.layer.borderWidth = width
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
    public func withShadow(color: UIColor? = .rgba(0, 0, 0, 0), opacity: CGFloat = 0.0, offset: CGPoint = .init(x: 0.0, y: -3.0), radius: CGFloat = 3.0) -> Self {
        self.layer.shadowColor = color?.cgColor
        self.layer.shadowOpacity = .init(opacity)
        self.layer.shadowOffset = .init(width: offset.x, height: offset.y)
        self.layer.shadowRadius = radius
        return self
    }
    
    // MARK: Setup methods of the constraints of the view.
    
    public enum PositionConstraintType {
        case top
        case leading
        case trailing
        case bottom
        case centerX
        case centerY
        
        var attribute: NSLayoutConstraint.Attribute {
            switch self {
            case .top:
                return .top
            case .leading:
                return .leading
            case .trailing:
                return .trailing
            case .bottom:
                return .bottom
            case .centerX:
                return .centerX
            case .centerY:
                return .centerY
            }
        }
    }
    
    @discardableResult
    public func withPositionConstraint(from thisConstraintType: PositionConstraintType? = nil, to targetConstraintType: PositionConstraintType, of targetView: UIView? = nil, offset: CGFloat = .zero) -> Self {
        guard let targetView: UIView = targetView ?? self.superview, self.isSharingCommonAncestorView(with: targetView) else {
            return self
        }
        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([.init(item: self, attribute: (thisConstraintType ?? targetConstraintType).attribute, relatedBy: .equal, toItem: targetView, attribute: targetConstraintType.attribute, multiplier: 1, constant: offset)])
        return self
    }
    
    public enum SizeConstraintType {
        case height
        case width
        
        var attribute: NSLayoutConstraint.Attribute {
            switch self {
            case .height:
                return .height
            case .width:
                return .width
            }
        }
    }
    
    @discardableResult
    public func withSizeConstraint(_ constraintType: SizeConstraintType, value: CGFloat) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.addConstraint(.init(item: self, attribute: constraintType.attribute, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: value))
        return self
    }
    
    public func isSharingCommonAncestorView(with view: UIView) -> Bool {
        return self.getAncestorViews().union([self]).intersection(view.getAncestorViews().union([view])).count > 0
    }
    
    public func getAncestorViews() -> Set<UIView> {
        if let superview = self.superview {
            return superview.getAncestorViews().union([superview])
        }
        else {
            return []
        }
    }
}
