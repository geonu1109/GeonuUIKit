//
//  UIChainingSettable.swift
//  GeonuUIKit
//
//  Created by 전건우 on 2020/01/10.
//

import UIKit

protocol UIChaningSettable where Self: UIView {}

extension UIChaningSettable {
    public var chainingSetter: UIChainingSetter<Self> {
        return .init(component: self)
    }
}
