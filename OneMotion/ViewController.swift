//
//  ViewController.swift
//  OneMotion
//
//  Created by Jason Vainikolo on 12/05/20.
//  Copyright © 2020 Jason Vainikolo. All rights reserved.
// new edit

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var viewProfileButton: UIButton!
    @IBOutlet weak var addWorkoutButton: UIButton!
    @IBOutlet weak var createChallengeButton: UIButton!
    @IBOutlet weak var viewProgressButton: UIButton!
    @IBOutlet weak var myDayButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        startButton.layer.cornerRadius = startButton.frame.width / 2
        
        
        
    }
    
    func HPButton(button: UIButton) {
        
        button.layer.masksToBounds = false
        button.layer.shadowRadius = 5
        button.layer.shadowOpacity = 0.5
        button.layer.shadowOffset = CGSize(width: 0, height: 2)
        button.layer.shadowColor = UIColor.gray.cgColor
    }


}

