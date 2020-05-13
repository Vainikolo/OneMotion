//
//  ProfileViewController.swift
//  OneMotion
//
//  Created by Jason Vainikolo on 13/05/20.
//  Copyright © 2020 Jason Vainikolo. All rights reserved.
//

import UIKit
import SQLite3

class ProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var profilePhoto: UIImageView!
    var db: OpaquePointer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        saveButton.layer.cornerRadius = 10.0


        let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("OneMotion.sqlite")
        
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("Error Opening database")
            return
        }
        
        let CreateTableQueuery = "CREATE TABLE IF NOT EXISTS PROFILE(FNAME TEXT PRIMARY KEY, LNAME TEXT, DOB DATE, GENDER TEXT, WEIGHT INTEGER, HEIGHT INTEGER, EMAIL TEXT)"
        if sqlite3_exec(db, CreateTableQueuery, nil, nil, nil) != SQLITE_OK {
            print("Error creating table")
            return
        }
        
        print("everything is fine")
        

    }
    
    @IBAction func changePhotoButton(_ sender: Any) {
        
        let imagePicked = UIImagePickerController()
        imagePicked.delegate = self
        imagePicked.sourceType = .photoLibrary
        
        self.present(imagePicked, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        profilePhoto.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        
        self.dismiss(animated: true, completion: nil)
    }
    
}



