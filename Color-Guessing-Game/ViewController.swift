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
        currentScore.text = "Current Score: 0"
    }
//    let myColor = UIColor(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
//
    @IBOutlet weak var colorPrompt: UIImageView!
    @IBOutlet weak var currentScore: UILabel!
    @IBOutlet weak var textPrompt: UILabel!
    @IBOutlet weak var highScore: UILabel!
    
    
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
    var maxScore = 0
    var nowScore = 0

    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    
    
    @IBAction func resetButton(_ reset: UIButton) {
        score = 0
       
        redButton.isEnabled = true
        blueButton.isEnabled = true
        greenButton.isEnabled = true
        viewDidLoad()
        
    }
    
    
    @IBAction func optionButtons(_ colorButton: UIButton) {
        
        switch colorButton.tag {
        case 0:
            if randomRed > randomBlue && randomRed > randomGreen {
                textPrompt.text = "Correct!"
                colorPrompt.backgroundColor = myColor()
                score += 1
                nowScore = score
                currentScore.text = "Current Score: \(nowScore)"
            } else {
                textPrompt.text = "Wrong! Reset the game."
            }
        case 1:
            if randomBlue > randomRed && randomBlue > randomGreen {
                textPrompt.text = "Correct!"
                colorPrompt.backgroundColor = myColor()
                score += 1
                nowScore = score
                currentScore.text = "Current Score: \(nowScore)"
            } else {
                textPrompt.text = "Wrong! Reset the game."
            }
        case 2:
            if randomGreen > randomRed && randomGreen > randomBlue {
                textPrompt.text = "Correct!"
                colorPrompt.backgroundColor = myColor()
                score += 1
                nowScore = score
                currentScore.text = "Current Score: \(nowScore)"
            } else {
                textPrompt.text = "Wrong! Reset the game."
            }
        default:
            print("")
        }

        colorButton.isEnabled = false
        colorButton.isEnabled = false
        colorButton.isEnabled = false
        
        maxScore = score
        highScore.text = "High Score: \(maxScore)"
        if maxScore > score {
            highScore.text = "High Score: \(maxScore)"
        } else if score > maxScore {
            maxScore = score
        }
    }
    
    
    
    
}

