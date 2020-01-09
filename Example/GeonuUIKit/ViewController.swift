//
//  ViewController.swift
//  GeonuUIKit
//
//  Created by geonu1109@gmail.com on 01/08/2020.
//  Copyright (c) 2020 geonu1109@gmail.com. All rights reserved.
//

import GeonuUIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let titleLabel: UILabel = Builder<UILabel>()
            .text("hello world")
            .textColor(.brown)
            .font(.systemFont(ofSize: 18, weight: .bold))
            .textAlignment(.center)
            .superview(self.view)
            .positionConstraint(to: .top, offset: 20)
            .positionConstraint(to: .centerX)
            .product
        
        let rectView: UIView = Builder<UIView>()
            .backgroundColor(.orange)
            .cornerRadius(20)
            .shadow(color: .gray, opacity: 0.5, offset: .init(x: 10, y: 10), radius: 20)
            .superview(self.view)
            .positionConstraint(from: .top, to: .bottom, of: titleLabel, offset: 20)
            .positionConstraint(to: .centerX, of: titleLabel)
            .sizeConstraint(to: .height, value: 80)
            .sizeConstraint(to: .width, value: 80)
            .product
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

