//
//  ViewController.swift
//  Dicee
//
//  Created by Atul Bansal on 08/10/18.
//  Copyright © 2018 Atul Bansal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randDiceIndex1 : Int = 0
    var randDiceIndex2 : Int = 0
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    override func viewDidLoad() {
        super.viewDidLoad()
        nw()
    }
    
    @IBAction func rollButtonPressed(_ sender: Any) {
   nw()
    }
    
    func nw() {
        randDiceIndex1 = Int.random(in: 0 ... 5)
        randDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randDiceIndex2])
    }
//    func motionBegan can be used
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        nw()
    }
}

