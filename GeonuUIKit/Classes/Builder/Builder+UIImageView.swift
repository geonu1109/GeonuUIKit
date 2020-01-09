//
//  Builder+UIImageView.swift
//  GeonuUIKit
//
//  Created by 전건우 on 2020/01/09.
//

import UIKit

extension Builder where Product: UIImageView {
    @discardableResult
    public func image(_ image: UIImage) -> Self {
        self.product.image = image
        return self
    }
}
