//
//  UIView.swift
//  GeonuUIKit
//
//  Created by Geonu Jeon on 2020/01/08.
//

import UIKit

extension UIView {
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
