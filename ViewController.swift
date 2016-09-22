//
//  ViewController.swift
//  Roshambo
//
//  Created by Adam DeCaria on 2016-09-19.
//  Copyright © 2016 Adam DeCaria. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var playerRoshambo: Int = 0
    var iOSRoshambo: Int = 0
    var winner: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: capture which button the user pressed
    @IBAction func userButtonPress(buttonPressed: UIButton) {
        
        if let buttonPressed = buttonPressed.currentTitle {
            print(buttonPressed)
            
            switch buttonPressed {
            case "rockButton":
                playerRoshambo = 1
            case "paperButton":
                playerRoshambo = 2
            case "scissorsButton":
                playerRoshambo = 3
            default:
                playerRoshambo = 1
            }
        }
        
        computeWinner()
    }// End @IBAction
    
    // MARK: call the computer's turn and compare with the player's choice to determine a winner
    func computeWinner() {
        
        iOSRoshambo = computerTurn()
        
        if iOSRoshambo > playerRoshambo {
            print ("Computer wins!")
            winner = "Computer"
        } else if iOSRoshambo < playerRoshambo {
            print("Player wins!")
            winner = "Player"
        } else {
            print("Its a draw.  Play again.")
            winner = "Draw"
        }
    }// End computeWinner
    
    // MARK: generate a random value and determine if it is a rock/paper/scissor, then return an Int
    func computerTurn() -> Int {
        let computerTurnResult = 1 + Int(arc4random() % 3)
        return computerTurnResult
    } // End computerTurn()
    
    // MARK: prepare for segue to ResultsController after rock button pressed
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        playerRoshambo = 1
        computeWinner()
        
        let controller = segue.destination as! ResultsViewController
        controller.matchWinner = self.winner

    }
    
    } // End ViewController


















