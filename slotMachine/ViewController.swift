//
//  ViewController.swift
//  slotMachine
//
//  Created by Andrew James Kinsey on 12/1/16.
//  Copyright © 2016 Andrew Kinsey. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        chipsLabel.text = "You have //numberofChips chips!"
    }

    @IBOutlet weak var chipsLabel: UILabel!
 

}

