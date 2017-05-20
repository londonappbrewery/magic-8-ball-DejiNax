//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Ayodeji Balogun on 18/05/2017.
//  Copyright © 2017 Nax Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber : Int = 0
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var askButtonPressed: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallIMage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        newBallIMage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallIMage()
    }
    
    func newBallIMage(){
        randomBallNumber = Int(arc4random_uniform(5))
        ImageView.image = UIImage(named: ballArray[randomBallNumber])
    }

}

