//
//  UIColor.swift
//  GeonuUIKit
//
//  Created by Geonu Jeon on 2020/01/08.
//

import UIKit

extension UIColor {
    /**
     Creates a color object using the specified opacity and RGB component values.
     
     - parameters:
        - red: 0 ~ 255
        - green: 0 ~ 255
        - blue: 0 ~ 255
        - alpha: 0.0 ~ 1.0
     */
    public static func rgba(_ red: Int, _ green: Int, _ blue: Int, _ alpha: CGFloat) -> UIColor {
        return .init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: alpha)
    }
    
    /**
     Creates a color object using the specified RGB component values.
     
     - parameters:
        - red: 0 ~ 255
        - green: 0 ~ 255
        - blue: 0 ~ 255
     */
    public static func rgb(_ red: Int, _ green: Int, _ blue: Int) -> UIColor {
        return .rgba(red, green, blue, 1)
    }
}
