//
//  ViewController.swift
//  OneMotion
//
//  Created by Jason Vainikolo on 12/05/20.
//  Copyright © 2020 Jason Vainikolo. All rights reserved.
//

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
        
        
//        viewProfileButton.layer.masksToBounds = false
//        viewProfileButton.layer.shadowRadius = 10
//        viewProfileButton.layer.shadowOpacity = 1.0
//        viewProfileButton.layer.shadowOffset = CGSize(width: 2, height: 2)
//        viewProfileButton.layer.shadowColor = UIColor.darkGray.cgColor
        
    }


}

