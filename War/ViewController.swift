//
//  ViewController.swift
//  War
//
//  Created by YINGHONGLI on 3/24/17.
//  Copyright © 2017 YINGHONGLI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore = 0
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftScore = 0
    
    let cardNames = ["card2", "card3","card4", "card5","card6", "card7","card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func dealTapped(_ sender: Any) {
        
        
        //randomized left num from 0-12
        let leftNum = Int(arc4random_uniform(13))
        
        //randomized right num from 0-12
        let rightNum = Int(arc4random_uniform(13))
        
        //set left image
        leftImageView.image = UIImage(named: cardNames[leftNum])
        
        //set right image
        rightImageView.image = UIImage(named: cardNames[rightNum])
        
        //Compare card nums
        if leftNum > rightNum {
            //leftNum wins increment score
            leftScore += 1
            
            //update label
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNum == rightNum{
            //its a tie
        }
        else {
            //right card wins
            rightScore += 1
            
            rightScoreLabel.text = String(rightScore)
        }
    }
    

}

