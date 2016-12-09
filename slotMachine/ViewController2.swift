//
//  ViewController2.swift
//  slotMachine
//
//  Created by Andrew James Kinsey on 12/6/16.
//  Copyright © 2016 Andrew Kinsey. All rights reserved.
//

import UIKit

class ViewController2: UIViewController
{
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var numberOfChipsLabel: UILabel!
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    
    var myChips = Chips()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        numberOfChipsLabel.text = "You have \(myChips.numberOfChips) chips!"
      
    }
    
    var fruitEmojis = ["🍎","🍒","🍑","🍆","💩","🍎","🍑","🍆","💩","🍎","🍑","🍆","🍎","🍑","🍆","🍎","🍑","🍆","🍎","🍑","🍆","🍎","🍑","🍆","🍎","🍑","🍆","🍎","🍑","🍆","💩", "🍊", "🍍", "🍋", "🍌"]
    
    func randomize1()
    {
         let randomIndex = Int(arc4random_uniform(UInt32(fruitEmojis.count)))
        label1.text = fruitEmojis[randomIndex]
    }
    
    func randomize2()
    {
        let randomIndex = Int(arc4random_uniform(UInt32(fruitEmojis.count)))
        label2.text = fruitEmojis[randomIndex]
    }
    
    func randomize3()
    {
        let randomIndex = Int(arc4random_uniform(UInt32(fruitEmojis.count)))
        label3.text = fruitEmojis[randomIndex]
    }
    
    func spin1()
    {
       
        randomize1()
        
        let deadlineTime = DispatchTime.now() + .seconds(1)
        DispatchQueue.main.asyncAfter(deadline: deadlineTime)
            {
            
                self.randomize1()
                
                let deadlineTime = DispatchTime.now() + .seconds(1)
                DispatchQueue.main.asyncAfter(deadline: deadlineTime)
                {
                    
                    self.randomize1()
                }
            }
        
    }
    
    func spin2()
    {
        
        randomize2()
        
        let deadlineTime = DispatchTime.now() + .seconds(1)
        DispatchQueue.main.asyncAfter(deadline: deadlineTime)
        {
            
            self.randomize2()
            
            let deadlineTime = DispatchTime.now() + .seconds(1)
            DispatchQueue.main.asyncAfter(deadline: deadlineTime)
            {
                
                self.randomize2()
            }
        }
        
    }
    
    func spin3()
    {
        
        randomize3()
        
        let deadlineTime = DispatchTime.now() + .seconds(1)
        DispatchQueue.main.asyncAfter(deadline: deadlineTime)
        {
            
            self.randomize3()
            
            let deadlineTime = DispatchTime.now() + .seconds(1)
            DispatchQueue.main.asyncAfter(deadline: deadlineTime)
            {
                
                self.randomize3()
            }
        }
        
    }
    
    func checkWinner()
    {
        if label1.text == label2.text && label1.text == label3.text && label1.text != "❓"
        {
           print("ten k")
        }
        
    }
    
    
  
    
    @IBAction func spinSlotsButton(_ sender: Any)
    {
        spin1()
        spin2()
        spin3()
        myChips.numberOfChips -= 100
        numberOfChipsLabel.text = "You have \(myChips.numberOfChips) chips!"
        
    }
   

}
