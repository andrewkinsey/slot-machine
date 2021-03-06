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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let secondVC = segue.destination as! ViewController2
        secondVC.myChips = numberOfChips
    }
    
//Maybe keep the label update
//    var number = 1
//    while number <= 10
//    {
//    chipsLabel.text = "You have \(numberOfChips.numberOfChips) chips!"
//    }
    
    
    override func viewDidAppear(_ animated: Bool)
    {
        chipsLabel.text = "You have \(numberOfChips.numberOfChips) chips!"
    }
    
    
    
    
    
    
    @IBAction func getChipsButton(_ sender: Any)
    {
        numberOfChips.numberOfChips += 50
        chipsLabel.text = "You have \(numberOfChips.numberOfChips) chips!"
    }

 

}

