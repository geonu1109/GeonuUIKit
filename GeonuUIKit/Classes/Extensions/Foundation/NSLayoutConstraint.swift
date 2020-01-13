//
//  NSLayoutConstraint.swift
//  GeonuUIKit
//
//  Created by 전건우 on 2020/01/09.
//

import Foundation

extension NSLayoutConstraint {
    public enum PositionType {
        case top
        case leading
        case trailing
        case bottom
        case centerX
        case centerY
        
        public var attribute: NSLayoutConstraint.Attribute {
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
    
    public enum SizeType {
        case height
        case width
        
        public var attribute: NSLayoutConstraint.Attribute {
            switch self {
            case .height:
                return .height
            case .width:
                return .width
            }
        }
    }
}
