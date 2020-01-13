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
        
        let titleLabel: UILabel = UILabel(frame: .zero).chainingSetter
            .setText("hello world")
            .setTextColor(.brown)
            .setFont(.systemFont(ofSize: 18, weight: .bold))
            .setTextAlignment(.center)
            .setSuperview(self.view)
            .addPositionConstraint(to: .top, offset: 20)
            .addPositionConstraint(to: .centerX)
            .component
        
        let rectView: UIView = UIView(frame: .zero).chainingSetter
            .setBackgroundColor(.orange)
            .setCornerRadius(20)
            .setShadow(color: .gray, opacity: 0.5, offset: .init(x: 10, y: 10), radius: 20)
            .setSuperview(self.view)
            .addPositionConstraint(from: .top, to: .bottom, of: titleLabel, offset: 20)
            .addPositionConstraint(to: .centerX, of: titleLabel)
            .addSizeConstraint(to: .height, value: 80)
            .addSizeConstraint(to: .width, value: 80)
            .component
        
        let footerLabel: UILabel = UILabel(frame: .zero).chainingSetter
            .setTextWithConfigureAttributes(text: "email", configuration: {
                $0.chainingSetter
                    .setForegroundColor(.cyan)
            })
            .setTextAlignment(.center)
            .setBorder(.black, 1)
            .setCornerRadius(5)
            .setSuperview(self.view)
            .addPositionConstraint(to: .bottom, offset: -20)
            .addPositionConstraint(to: .centerX)
            .addSizeConstraint(to: .height, value: 30)
            .addSizeConstraint(to: .width, value: 80)
            .component
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

