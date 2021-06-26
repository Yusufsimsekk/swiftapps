//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

var a : Int = 0
var b : Int = 0
var c : Int = b + 1

class ViewController: UIViewController {
    @IBOutlet weak var rollImageOne: UIImageView!
    
    @IBOutlet weak var rollImageTwo: UIImageView!
    
    @IBOutlet weak var Label: UILabel!
    
    @IBAction func RollButtonPressed(_ sender: UIButton) {
            if a%4 == 0{
                rollImageTwo.image = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")][Int.random(in: 0...5)]
                rollImageOne.image = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")][Int.random(in: 0...5)]
        } else if a%4 == 1{
            b = Int.random(in: 0...5)
            rollImageTwo.image = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")][b]
            rollImageOne.image = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")][b]

        } else if a%4 == 2{
            
            b = Int.random(in: 0...5)
            c = b - 2
            if c == 6{
                c = 0
            }
            else if c < 0{
                c = c + 6 }
            
            rollImageTwo.image = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")][b]
            rollImageOne.image = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")][c]

            
        } else if a%4 == 3{
          
            b = (b + 1)
            c = (b + 1)
            if b == 6 {
                b = 0
                c = 1
            }
            if c == 6{
                b = 0
                c = 1
            }
            rollImageTwo.image = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")][b]
            rollImageOne.image = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")][c]
        }
        
    }
    
    @IBAction func ModeButton(_ sender: UIButton) {
        a += 1
       print(a)
        if a%4 == 0{
            Label.text = "This is Random mode"
    } else if a%4 == 1{

        Label.text = "This is Cheating Random mode"

    } else if a%4 == 2{

        Label.text = "This is Half Random mode"

        
    } else if a%4 == 3{

        Label.text = "Find This one Yourself!"
   
    }
}

}
