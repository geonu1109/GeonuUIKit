//
//  UIChainingSetter.swift
//  GeonuUIKit
//
//  Created by Geonu Jeon on 2020/01/10.
//

import UIKit

public class UIChainingSetter<Component: UIView> {
    public let component: Component
    
    public init(component: Component) {
        self.component = component
    }
}
