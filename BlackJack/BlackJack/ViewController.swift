//
//  ViewController.swift
//  BlackJack
//
//  Created by Lok Yiu To on 11/24/19.
//  Copyright © 2019 Lok Yiu To. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var cpuScoreLabel: UILabel!
    @IBOutlet weak var cpuCard1: UIImageView!
    @IBOutlet weak var cpuCard2: UIImageView!
    @IBOutlet weak var playerCard1: UIImageView!
    @IBOutlet weak var playerCard2: UIImageView!
    @IBOutlet weak var playerCardTotalLabel: UILabel!
    @IBOutlet weak var cpuCardTotalLabel: UILabel!
    
    var playerCardTotal = 0
    var cpuCardTotal = 0
    var playerScore = 0
    var cpuScore = 0
    
    var playerCardNum1 = 0
    var playerCardNum2 = 0
    var cpuCardNum1 = 0
    var cpuCardNum2 = 0
    
    var playerCardSuit1 = 0
    var playerCardSuit2 = 0
    var cpuCardSuit1 = 0
    var cpuCardSuit2 = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func newGame(_ sender: Any) {
        
        playerCardTotal = 0
        cpuCardTotal = 0
        
//      Random number for card shuffle
        playerCardNum1 = Int.random(in: 2...13)
        playerCardNum2 = Int.random(in: 2...13)
        cpuCardNum1 = Int.random(in: 2...13)
                
        playerCardSuit1 = Int.random(in: 1...4)
        playerCardSuit2 = Int.random(in: 1...4)
        cpuCardSuit1 = Int.random(in: 1...4)
        
//      Check for repeting cards
        if playerCardNum2 == playerCardNum1 || playerCardNum2 == cpuCardNum1{
            while playerCardSuit2 == playerCardSuit1{
                playerCardSuit2 = Int.random(in: 1...4)
            }
        }
        
        if cpuCardNum1 == playerCardNum1 || cpuCardNum1 == playerCardNum2 {
            while cpuCardSuit1 == playerCardSuit1 || cpuCardSuit1 == playerCardSuit2 {
                cpuCardSuit1 = Int.random(in: 1...4)
            }
        }

    
        
        
//      Update image view for drawing cards
        playerCard1.image = UIImage(named: "\(playerCardNum1).\(playerCardSuit1)")
        
        playerCard2.image = UIImage(named: "\(playerCardNum2).\(playerCardSuit2)")
        
        cpuCard1.image = UIImage(named: "\(cpuCardNum1).\(cpuCardSuit1)")
        
        cpuCard2.image = UIImage(named: "gray_back"
        )
        
//      Get card total for player
        if  playerCardNum1 >= 10 {
            if playerCardNum2 >= 10 {
                playerCardTotal = 20
            }
            else if playerCardNum2 == 1 { // 10 + Ace
                playerCardTotal = 21
            }
            else {
                playerCardTotal = 10 + playerCardNum2
            }
        }
        else {
            if playerCardNum1 == 1 && playerCardNum2 >= 10 {
                playerCardTotal = 21
            }
            else if playerCardNum2 >= 10 {
                playerCardTotal = playerCardNum1 + 10
            }
            else {
                playerCardTotal = playerCardNum1 + playerCardNum2
            }
        }
            
//      Get card total for cpu
        cpuCardTotal = cpuCardNum1
        
        
//      Update player's and cpu's card total labels
        
        cpuCardTotalLabel.text = "\(cpuCardTotal) + ?"
        
        
        
    }
    
    @IBAction func stand(_ sender: Any) {
        
        playerCardTotal = playerCardNum1 + playerCardNum2
        
        
        
        
    }
    
    

}

