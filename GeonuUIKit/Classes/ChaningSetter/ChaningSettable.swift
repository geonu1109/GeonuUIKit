//
//  ChaningSettable.swift
//  GeonuUIKit
//
//  Created by 전건우 on 2020/01/10.
//

import UIKit

public protocol ChaningSettable {}

extension ChaningSettable {
    public var chainingSetter: ChainingSetter<Self> {
        return .init(component: self)
    }
}
