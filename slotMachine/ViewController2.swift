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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let firstVC = segue.destination as! ViewController
        firstVC.numberOfChips = myChips
    }

    
    var fruitEmojis = ["🍎","🍒","🍑","🍆","💩","🍎","🍑","🍆","💩","🍎","🍑","🍆","🍎","🍑","🍆","🍎","🍑","🍆","🍎","🍑","🍆","🍎","🍑","🍆","🍎","🍑","🍆","🍎","🍑","🍆","💩", "🍊", "🍍", "🍋", "🍌"]
    
    func randomize1()
    {
        let randomIndex = Int(arc4random_uniform(UInt32(fruitEmojis.count)))
        labelOne.text = ""
        label1.text = fruitEmojis[randomIndex]
        
    }
    func randomizeOne()
    {
        let randomIndex = Int(arc4random_uniform(UInt32(fruitEmojis.count)))
        label1.text = ""
        labelOne.text = fruitEmojis[randomIndex]
       
    }
    func randomize2()
    {
        let randomIndex = Int(arc4random_uniform(UInt32(fruitEmojis.count)))
        labelTwo.text = ""
        label2.text = fruitEmojis[randomIndex]
        
    }
    func randomizeTwo()
    {
        let randomIndex = Int(arc4random_uniform(UInt32(fruitEmojis.count)))
        label2.text = ""
        labelTwo.text = fruitEmojis[randomIndex]
        
    }
    func randomize3()
    {
        let randomIndex = Int(arc4random_uniform(UInt32(fruitEmojis.count)))
        labelThree.text = ""
        label3.text = fruitEmojis[randomIndex]
        
    }
    func randomizeThree()
    {
        let randomIndex = Int(arc4random_uniform(UInt32(fruitEmojis.count)))
        label3.text = ""
        labelThree.text = fruitEmojis[randomIndex]
        
    }
    
    func spin1()
    {
       
        randomizeOne()
        
        
        let deadlineTime = DispatchTime.now() + .seconds(1)
        DispatchQueue.main.asyncAfter(deadline: deadlineTime)
            {
            
                self.randomizeOne()
                
                let deadlineTime = DispatchTime.now() + .seconds(1)
                DispatchQueue.main.asyncAfter(deadline: deadlineTime)
                {
                    
                    self.randomize1()
                }
            }
        
    }
    
    func spin2()
    {
        
        randomizeTwo()
        
    
        let deadlineTime = DispatchTime.now() + .seconds(1)
        DispatchQueue.main.asyncAfter(deadline: deadlineTime)
        {
            
            self.randomizeTwo()
            
            let deadlineTime = DispatchTime.now() + .seconds(1)
            DispatchQueue.main.asyncAfter(deadline: deadlineTime)
            {
                
                self.randomize2()
            }
        }
        
    }
    
    func spin3()
    {
        
        randomizeThree()
        
        
        let deadlineTime = DispatchTime.now() + .seconds(1)
        DispatchQueue.main.asyncAfter(deadline: deadlineTime)
        {
            
            self.randomizeThree()
            
            let deadlineTime = DispatchTime.now() + .seconds(1)
            DispatchQueue.main.asyncAfter(deadline: deadlineTime)
            {
                
                self.randomize3()
                
            }
        }
        
    }
    
    func checkWinner()
    {
        if label1.text == label2.text && label1.text == label3.text && label1.text != "❓" && label1.text != ""
        {
            print("ten k")
            myChips.numberOfChips += 10000
        }
        if label1.text == "🍌"
        {
            print("100")
            myChips.numberOfChips += 10000
        }
        if label2.text == "🍌"
        {
            print("100")
            myChips.numberOfChips += 10000
        }
        if label3.text == "🍌"
        {
            print("100")
            myChips.numberOfChips += 10000
        }
        
    }
    
    
  
    
    @IBAction func spinSlotsButton(_ sender: Any)
    {
        spin1()
        spin2()
        spin3()
        myChips.numberOfChips -= 100
        numberOfChipsLabel.text = "You have \(myChips.numberOfChips) chips!"
        let deadlineTime = DispatchTime.now() + .seconds(3)
        DispatchQueue.main.asyncAfter(deadline: deadlineTime)
        {
        self.checkWinner()
        self.numberOfChipsLabel.text = "You have \(self.myChips.numberOfChips) chips!"
        }
    }
   

}
