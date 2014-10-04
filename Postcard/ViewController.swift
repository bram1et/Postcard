//
//  ViewController.swift
//  Postcard
//
//  Created by Chris on 10/1/14.
//  Copyright (c) 2014 Treehouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        nameLabel.hidden = false
        nameLabel.textColor = UIColor.blueColor()
        nameLabel.text = enterNameTextField.text
        enterNameTextField.hidden = true
        enterMessageTextField.text = ""
        messageLabel.textColor = UIColor.redColor()
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

