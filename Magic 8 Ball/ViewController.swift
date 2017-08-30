//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Stephen Skubik-Peplaski on 8/30/17.
//  Copyright © 2017 Stephen Skubik-Peplaski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballImages: Array = [ "ball1", "ball2", "ball3", "ball4", "ball5" ]
    
    @IBOutlet weak var magic8BallImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomize8BallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    fileprivate func randomize8BallImage() {
        magic8BallImageView.image = UIImage(named: ballImages[Int(arc4random_uniform(5))])
    }
    
    @IBAction func askTheMagic8Ball(_ sender: UIButton) {
        randomize8BallImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomize8BallImage()
    }
}

