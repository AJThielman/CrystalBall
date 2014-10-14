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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //vulnerable example 
        //let = readonly and var = readwrite
        //CrystalBall.CrystalBall_Answers = ["1","2"]
        
        
        let backgroundImage = UIImage(named: "bookmark-3")
        let imageview = UIImageView(image: backgroundImage)
        self.view.insertSubview(imageview, atIndex: 0)
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
        //step1
            //self.predictionLabel.text = "Yes";
        //step2
            //let randomx = Int(arc4random_uniform(UInt32(predictions.count)))
            //self.predictionLabel.text = predictions[randomx]
        
        self.predictionLabel.text = CrystalBall_Answers[Int(arc4random_uniform(UInt32(CrystalBall_Answers.count)))]
    }
    
    @IBOutlet weak var predictionLabel: UILabel!
    
}