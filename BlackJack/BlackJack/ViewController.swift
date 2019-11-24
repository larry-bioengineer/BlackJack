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
    
    var playerScore = 0
    var cpuScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func hit(_ sender: Any) {
        
        let playerCardNum1 = Int.random(in: 2...14)
        let playerCardSuit1 = Int.random(in: 1...4)
        let playerCardNum2 = Int.random(in: 2...14)
        let playerCardSuit2 = Int.random(in: 1...4)
        
        let cpuCardNum1 = Int.random(in: 2...14)
        let cpuCardSuit1 = Int.random(in: 1...4)
        let cpuCardNum2 = Int.random(in: 2...14)
        let cpuCardSuit2 = Int.random(in: 1...4)
        
        
//      Update Image View
        
        
        
        
        
    }
    
    @IBAction func stand(_ sender: Any) {
        
        
        
        
    }
    

}

