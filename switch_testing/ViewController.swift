//
//  ViewController.swift
//  switch_testing
//
//  Created by Beau Carrillo on 9/8/16.
//  Copyright © 2016 Beau Carrillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let counterLbl = UILabel()
    let checkLbl = UILabel()
    let circleLbl = UILabel()
    var tapGesture = UITapGestureRecognizer()
    
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let customView = UIView()
        let textLabel = UILabel()
        let switchControl = UISwitch()
        
        let customView2 = UIView()
        let textLabel2 = UILabel()
        let stepperControl = UIStepper()
        
        let customView3 = UIView()
        
        textLabel.text = "Force Containers on Delivery"
        textLabel.textColor = UIColor.lightGrayColor()
        textLabel.font = UIFont(name: "Arial", size: 16)
        
        textLabel2.text = "Unit of Measure Qty"
        textLabel2.textColor = UIColor.lightGrayColor()
        textLabel2.font = UIFont(name: "Arial", size: 16)


        counterLbl.text = String(Int(stepperControl.value))
        counterLbl.textColor = UIColor.whiteColor()
        counterLbl.font = UIFont(name: "Arial", size: 18)
        counterLbl.textAlignment = .Center
        counterLbl.backgroundColor = UIColor(red: 127/255, green: 229/255, blue: 206/255, alpha: 1.0)
        
        stepperControl.wraps = false
        stepperControl.autorepeat = true
        stepperControl.maximumValue = 10
        stepperControl.minimumValue = -10
        stepperControl.tintColor = UIColor(red: 31/255, green: 209/255, blue: 169/255, alpha: 1.0)
        stepperControl.addTarget(self, action: #selector(ViewController.incrementQty(_:)), forControlEvents: .ValueChanged)
        
        switchControl.tintColor = UIColor(red: 127/255, green: 229/255, blue: 206/255, alpha: 1.0)//alt lighter mint theme (when hovering on web)
        switchControl.onTintColor = UIColor(red: 31/255, green: 209/255, blue: 169/255, alpha: 1.0) //regular mint theme
        
        let codeCircle = 0x25CB
        let scalarCircle = UnicodeScalar(codeCircle)
        circleLbl.text = "\(scalarCircle)"
        
        circleLbl.font = UIFont(name: "Arial", size: 75)
        circleLbl.textColor = UIColor(red: 127/255, green: 229/255, blue: 206/255, alpha: 1.0)
        
        let codeCheck = 0x2713
        let scalarCheck = UnicodeScalar(codeCheck)
        checkLbl.text = "\(scalarCheck)"
        checkLbl.hidden = true
        checkLbl.textAlignment = .Center
        
        let checkLblSize = circleLbl.font.pointSize / 1.75
        checkLbl.font = UIFont(name: "Arial", size: checkLblSize)
        checkLbl.textColor = UIColor(red: 31/255, green: 209/255, blue: 169/255, alpha: 1.0)

        //tap settings
        tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.checkToggle(_:)))
        tapGesture.numberOfTapsRequired = 1
        customView3.userInteractionEnabled = true
        customView3.addGestureRecognizer(tapGesture)
        
        let textLbl3 = UILabel()
        textLbl3.text = "Force Containers on Delivery"
        textLbl3.textColor = UIColor.lightGrayColor()
        textLbl3.font = UIFont(name: "Arial", size: 16)
        
       
        
        
        //Grouping #1
        self.view.addSubview(customView)
        customView.translatesAutoresizingMaskIntoConstraints = false
        
        customView.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        customView.addSubview(switchControl)
        switchControl.translatesAutoresizingMaskIntoConstraints = false
        
        //Grouping #2
        self.view.addSubview(customView2)
        customView2.translatesAutoresizingMaskIntoConstraints = false
        
        customView2.addSubview(textLabel2)
        textLabel2.translatesAutoresizingMaskIntoConstraints = false
        
        customView2.addSubview(counterLbl)
        counterLbl.translatesAutoresizingMaskIntoConstraints = false
        
        customView2.addSubview(stepperControl)
        stepperControl.translatesAutoresizingMaskIntoConstraints = false
        
        //Grouping #3
        self.view.addSubview(customView3)
        customView3.translatesAutoresizingMaskIntoConstraints = false
        
        customView3.addSubview(textLbl3)
        textLbl3.translatesAutoresizingMaskIntoConstraints = false
        
        customView3.addSubview(checkLbl)
        checkLbl.translatesAutoresizingMaskIntoConstraints = false
        
        customView3.addSubview(circleLbl)
        circleLbl.translatesAutoresizingMaskIntoConstraints = false

//        customView3.backgroundColor = UIColor.blueColor()
        
        
        //CONSTRAINTS
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
            textLabel2.bottomAnchor.constraintEqualToAnchor(customView2.bottomAnchor, constant: -3),
            textLabel2.leadingAnchor.constraintEqualToAnchor(customView2.leadingAnchor, constant: 10),
            textLabel2.trailingAnchor.constraintEqualToAnchor(counterLbl.leadingAnchor)
            ])
        
        NSLayoutConstraint.activateConstraints([
            counterLbl.bottomAnchor.constraintEqualToAnchor(customView2.bottomAnchor),
            counterLbl.trailingAnchor.constraintEqualToAnchor(stepperControl.leadingAnchor, constant: -15),
            counterLbl.heightAnchor.constraintEqualToAnchor(stepperControl.heightAnchor),
            counterLbl.widthAnchor.constraintEqualToAnchor(counterLbl.heightAnchor)
            ])
        
        NSLayoutConstraint.activateConstraints([
            stepperControl.bottomAnchor.constraintEqualToAnchor(customView2.bottomAnchor),
            stepperControl.trailingAnchor.constraintEqualToAnchor(customView2.trailingAnchor, constant: -10)
            ])
        
        //Grouping #3
        NSLayoutConstraint.activateConstraints([
            customView3.topAnchor.constraintEqualToAnchor(customView2.bottomAnchor),
            customView3.leadingAnchor.constraintEqualToAnchor(self.view.leadingAnchor),
            customView3.trailingAnchor.constraintEqualToAnchor(self.view.trailingAnchor),
            customView3.heightAnchor.constraintEqualToConstant(60)
            ])
        
        NSLayoutConstraint.activateConstraints([
            textLbl3.bottomAnchor.constraintEqualToAnchor(customView3.bottomAnchor, constant: 10),
            textLbl3.leadingAnchor.constraintEqualToAnchor(customView3.leadingAnchor, constant: 10)
            ])
        
        NSLayoutConstraint.activateConstraints([
            checkLbl.topAnchor.constraintEqualToAnchor(customView3.topAnchor),
            checkLbl.trailingAnchor.constraintEqualToAnchor(customView3.trailingAnchor, constant: -10),
            checkLbl.heightAnchor.constraintEqualToConstant(100)
            ])
        
        NSLayoutConstraint.activateConstraints([
            circleLbl.topAnchor.constraintEqualToAnchor(customView3.topAnchor),
            circleLbl.trailingAnchor.constraintEqualToAnchor(customView3.trailingAnchor, constant: -10),
            circleLbl.heightAnchor.constraintEqualToConstant(100)
            ])
        

    }
    
    func incrementQty(sender: UIStepper!) {
        if Int(sender.value) == 0 {
            counterLbl.backgroundColor = UIColor(red: 127/255, green: 229/255, blue: 206/255, alpha: 1.0) // "default" inactive look when 0
        } else {
            counterLbl.backgroundColor = UIColor(red: 31/255, green: 209/255, blue: 169/255, alpha: 1.0)
        }
        
        counterLbl.text = String(Int(sender.value))
        print("Stepper is now \(Int(sender.value))")
    }
    
    func checkToggle(sender: UILabel!) {
        if checkLbl.hidden != true {
            checkLbl.hidden = true
            circleLbl.textColor = UIColor(red: 127/255, green: 229/255, blue: 206/255, alpha: 1.0)
        } else {
            checkLbl.hidden = false
            circleLbl.textColor = UIColor(red: 31/255, green: 209/255, blue: 169/255, alpha: 1.0)
        }
    }
    
    override func viewDidLayoutSubviews() {
        counterLbl.layer.cornerRadius = counterLbl.bounds.width / 2
        counterLbl.clipsToBounds = true
        print(counterLbl.bounds.width)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

//UIApplicationShortcutIcon.init(type: .Confirmation) //these are not accessible--only through quick actions

