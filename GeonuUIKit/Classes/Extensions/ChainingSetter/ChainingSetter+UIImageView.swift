//
//  ChainingSetter+UIImageView.swift
//  GeonuUIKit
//
//  Created by Geonu Jeon on 2020/01/10.
//

import UIKit

extension ChainingSetter where Component: UIImageView {
    @discardableResult
    public func setImage(_ image: UIImage) -> Self {
        self.component.image = image
        return self
    }
}
