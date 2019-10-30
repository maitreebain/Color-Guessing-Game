//
//  ViewController.swift
//  Color-Guessing-Game
//
//  Created by Maitree Bain on 10/29/19.
//  Copyright © 2019 Maitree Bain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorPrompt.backgroundColor = myColor()
    }
//    let myColor = UIColor(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
//
    @IBOutlet weak var colorPrompt: UIImageView!
    @IBOutlet weak var currentScore: UILabel!
    @IBOutlet var highScore: UIView!
    @IBOutlet weak var textPrompt: UILabel!
    
    
//update at index
    
    var randomRed = CGFloat.random(in: 0...1)
    var randomBlue = CGFloat.random(in: 0...1)
    var randomGreen = CGFloat.random(in: 0...1)
     
    func myColor() -> UIColor {
        randomRed = CGFloat.random(in: 0...1)
         randomBlue = CGFloat.random(in: 0...1)
         randomGreen = CGFloat.random(in: 0...1)
        let randomColor = UIColor.init(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1)
        return randomColor
    }
     
     var score = 0
    
    @IBAction func optionButtons(_ colorButton: UIButton) {
        
        switch colorButton.tag {
        case 0:
            if randomRed > randomBlue && randomRed > randomGreen {
                textPrompt.text = "Correct!"
                colorPrompt.backgroundColor = myColor()
                score += 1
                currentScore.text = "Current Score: \(score)"
            } else {
                textPrompt.text = "Wrong! Try again"
            }
        case 1:
            if randomBlue > randomRed && randomBlue > randomGreen {
                textPrompt.text = "Correct!"
                colorPrompt.backgroundColor = myColor()
                score += 1
                currentScore.text = "Current Score: \(score)"
            } else {
                textPrompt.text = "Wrong! Try again"
            }
        case 2:
            if randomGreen > randomRed && randomGreen > randomBlue {
                textPrompt.text = "Correct!"
                colorPrompt.backgroundColor = myColor()
                score += 1
                currentScore.text = "Current Score: \(score)"
            } else {
                textPrompt.text = "Wrong! Try again"
            }
        default:
            print("")
        }
    }
    
    
    
    
}

