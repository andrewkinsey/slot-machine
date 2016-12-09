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
 
    @IBOutlet weak var chipsLabel: UILabel!
    
    var numberOfChips = Chips()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        numberOfChips.numberOfChips = 1000
        chipsLabel.text = "You have \(numberOfChips.numberOfChips) chips!"
       
    }
    
    

 

}

