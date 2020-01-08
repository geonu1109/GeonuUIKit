//
//  UIImage.swift
//  GeonuUIKit
//
//  Created by Geonu Jeon on 2020/01/08.
//

import UIKit

extension UIImageView {
    @discardableResult
    public func withImage(_ image: UIImage) -> Self {
        self.image = image
        return self
    }
}
