//
//  ViewController.swift
//  CrystalBall
//
//  Created by Alex Thielman on 10/11/14.
//  Copyright (c) 2014 BroTime. All rights reserved.
//

import UIKit
import Darwin

class ViewController: UIViewController {
    
    var predictions = ["It is certain"
        ,"It is Decidedly so"
        ,"All signs say YES"
        ,"The stars are not aligned"
        ,"My reply is no"
        ,"It is doubtful"
        ,"Better not tell you now"
        ,"Concentrate and ask again"
        ,"Unable to answer now"
        ,"Maybe yes, maybe no"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    /*
    //super = parent class = uiViewContoller
    
    override func viewDidAppear(_animated: Bool) {
    var frame = self.predictionLabel.frame;
    self.predictionLabel.frame = CGRectMake(frame.origin.x, 400, frame.size.width, frame.size.height)
    }
    */
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed() {
        //self.predictionLabel.text = "Yes";
        let randomx = Int(arc4random_uniform(UInt32(predictions.count)))
        self.predictionLabel.text = predictions[randomx]
    }
    
    @IBOutlet weak var predictionLabel: UILabel!
    
}