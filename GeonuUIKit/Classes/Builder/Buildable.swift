//
//  Buildable.swift
//  GeonuUIKit
//
//  Created by 전건우 on 2020/01/09.
//

import Foundation

public protocol Buildable {}

extension Buildable {
    public var builder: Builder<Self> {
        return .init(product: self)
    }
}
