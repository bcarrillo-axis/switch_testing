//
//  ViewController.swift
//  switch_testing
//
//  Created by Beau Carrillo on 9/8/16.
//  Copyright © 2016 Beau Carrillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let customView = UIView()
        let textLabel = UILabel()
        let switchControl = UISwitch()
        
        let customView2 = UIView()
        let textLabel2 = UILabel()
        let counterLbl = UILabel()
        let stepperControl = UIStepper()
        
        textLabel.text = "Force Containers on Delivery"
        textLabel.textColor = UIColor.blueColor()
        textLabel.font = UIFont(name: "Arial", size: 16)
        
        textLabel2.text = "Unit of Measure Qty"
        textLabel2.textColor = UIColor.blueColor()
        textLabel2.font = UIFont(name: "Arial", size: 16)

        counterLbl.text = "0"
        counterLbl.textColor = UIColor.blueColor()
        counterLbl.font = UIFont(name: "Arial", size: 16)
        counterLbl.textAlignment = .Center
        

        
//        customView.backgroundColor = UIColor.purpleColor()
//        customView2.backgroundColor = UIColor.redColor()
        
        
        self.view.addSubview(customView)
        customView.translatesAutoresizingMaskIntoConstraints = false
        
        customView.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        customView.addSubview(switchControl)
        switchControl.translatesAutoresizingMaskIntoConstraints = false
        
        
        self.view.addSubview(customView2)
        customView2.translatesAutoresizingMaskIntoConstraints = false
        
        customView2.addSubview(textLabel2)
        textLabel2.translatesAutoresizingMaskIntoConstraints = false
        
        customView2.addSubview(counterLbl)
        counterLbl.translatesAutoresizingMaskIntoConstraints = false
        
        customView2.addSubview(stepperControl)
        stepperControl.translatesAutoresizingMaskIntoConstraints = false

        
        
        
        //Grouping #1
        NSLayoutConstraint.activateConstraints([
            customView.topAnchor.constraintEqualToAnchor(self.topLayoutGuide.bottomAnchor),
            customView.leadingAnchor.constraintEqualToAnchor(self.view.leadingAnchor),
            customView.trailingAnchor.constraintEqualToAnchor(self.view.trailingAnchor),
            customView.heightAnchor.constraintEqualToConstant(60)
            ])
        
        NSLayoutConstraint.activateConstraints([
            textLabel.leadingAnchor.constraintEqualToAnchor(customView.leadingAnchor, constant: 10),
            textLabel.trailingAnchor.constraintEqualToAnchor(switchControl.leadingAnchor),
            textLabel.bottomAnchor.constraintEqualToAnchor(customView.bottomAnchor, constant: -5)
            ])
        
        NSLayoutConstraint.activateConstraints([
            switchControl.leadingAnchor.constraintEqualToAnchor(textLabel.trailingAnchor),
            switchControl.trailingAnchor.constraintEqualToAnchor(customView.trailingAnchor, constant: -10),
            switchControl.bottomAnchor.constraintEqualToAnchor(customView.bottomAnchor)
            ])
        
        
        //Grouping #2
        NSLayoutConstraint.activateConstraints([
            customView2.topAnchor.constraintEqualToAnchor(customView.bottomAnchor),
            customView2.leadingAnchor.constraintEqualToAnchor(self.view.leadingAnchor),
            customView2.trailingAnchor.constraintEqualToAnchor(self.view.trailingAnchor),
            customView2.heightAnchor.constraintEqualToConstant(60)
            ])
        
        NSLayoutConstraint.activateConstraints([
            textLabel2.bottomAnchor.constraintEqualToAnchor(customView2.bottomAnchor, constant: -5),
            textLabel2.leadingAnchor.constraintEqualToAnchor(customView2.leadingAnchor, constant: 10),
            textLabel2.trailingAnchor.constraintEqualToAnchor(counterLbl.leadingAnchor)
            ])
        
        NSLayoutConstraint.activateConstraints([
            counterLbl.bottomAnchor.constraintEqualToAnchor(customView2.bottomAnchor, constant: -5),
            counterLbl.trailingAnchor.constraintEqualToAnchor(stepperControl.leadingAnchor),
            counterLbl.leadingAnchor.constraintEqualToAnchor(textLabel2.trailingAnchor)
            ])
        
        NSLayoutConstraint.activateConstraints([
            stepperControl.bottomAnchor.constraintEqualToAnchor(customView2.bottomAnchor),
            stepperControl.trailingAnchor.constraintEqualToAnchor(customView2.trailingAnchor)
            ])
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

