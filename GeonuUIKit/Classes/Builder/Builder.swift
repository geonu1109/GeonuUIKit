//
//  Builder.swift
//  GeonuUIKit
//
//  Created by 전건우 on 2020/01/09.
//

import Foundation

public class Builder<Product> {
    public let product: Product
    
    public init(product: Product) {
        self.product = product
    }
}
