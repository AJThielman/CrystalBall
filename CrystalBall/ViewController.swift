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
        
      
        /* MONEY!!!
        let backgroundImage = UIImage(named: "bookmark-3")
        let imageview = UIImageView(image: backgroundImage)
        self.view.insertSubview(imageview, atIndex: 0)
        */
     
        self.backgroundImageView.animationImages =
            [UIImage(named: "CrystalBall0000"),
            UIImage(named: "CrystalBall0001"),
            UIImage(named: "CrystalBall0002"),
            UIImage(named: "CrystalBall0003"),
            UIImage(named: "CrystalBall0004"),
            UIImage(named: "CrystalBall0005"),
            UIImage(named: "CrystalBall0006"),
            UIImage(named: "CrystalBall0007"),
            UIImage(named: "CrystalBall0008"),
            UIImage(named: "CrystalBall0009"),
            UIImage(named: "CrystalBall0010"),
            UIImage(named: "CrystalBall0011"),
            UIImage(named: "CrystalBall0012"),
            UIImage(named: "CrystalBall0013"),
            UIImage(named: "CrystalBall0014"),
            UIImage(named: "CrystalBall0015"),
            UIImage(named: "CrystalBall0016"),
            UIImage(named: "CrystalBall0017"),
            UIImage(named: "CrystalBall0018"),
            UIImage(named: "CrystalBall0019"),
            UIImage(named: "CrystalBall0020"),
            UIImage(named: "CrystalBall0021"),
            UIImage(named: "CrystalBall0022"),
            UIImage(named: "CrystalBall0023"),
            UIImage(named: "CrystalBall0024"),
            UIImage(named: "CrystalBall0025"),
            UIImage(named: "CrystalBall0026"),
            UIImage(named: "CrystalBall0027"),
            UIImage(named: "CrystalBall0028"),
            UIImage(named: "CrystalBall0029"),
            UIImage(named: "CrystalBall0030"),
            UIImage(named: "CrystalBall0031"),
            UIImage(named: "CrystalBall0032"),
            UIImage(named: "CrystalBall0033"),
            UIImage(named: "CrystalBall0034"),
            UIImage(named: "CrystalBall0035"),
            UIImage(named: "CrystalBall0036"),
            UIImage(named: "CrystalBall0037"),
            UIImage(named: "CrystalBall0038"),
            UIImage(named: "CrystalBall0039"),
            UIImage(named: "CrystalBall0040"),
            UIImage(named: "CrystalBall0041"),
            UIImage(named: "CrystalBall0042"),
            UIImage(named: "CrystalBall0043"),
            UIImage(named: "CrystalBall0044"),
            UIImage(named: "CrystalBall0045"),
            UIImage(named: "CrystalBall0046"),
            UIImage(named: "CrystalBall0047"),
            UIImage(named: "CrystalBall0048"),
            UIImage(named: "CrystalBall0049"),
            UIImage(named: "CrystalBall0050"),
            UIImage(named: "CrystalBall0051"),
            UIImage(named: "CrystalBall0052"),
            UIImage(named: "CrystalBall0053"),
            UIImage(named: "CrystalBall0054"),
            UIImage(named: "CrystalBall0055"),
            UIImage(named: "CrystalBall0056"),
            UIImage(named: "CrystalBall0057"),
            UIImage(named: "CrystalBall0058"),
            UIImage(named: "CrystalBall0059")]
        
        self.backgroundImageView.animationDuration = 2.0
        self.backgroundImageView.animationRepeatCount = 1
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


    /*
    @IBAction func buttonPressed() {
        //step1
            //self.predictionLabel.text = "Yes";
        //step2
            //let randomx = Int(arc4random_uniform(UInt32(predictions.count)))
            //self.predictionLabel.text = predictions[randomx]
        
        self.predictionLabel.text = CrystalBall_Answers[Int(arc4random_uniform(UInt32(CrystalBall_Answers.count)))]
    }
    */
    
    @IBOutlet weak var predictionLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!

// MARK: Make prediction
    func makePrediction (){
    self.backgroundImageView .startAnimating()
    self.predictionLabel.text = CrystalBall_Answers[Int(arc4random_uniform(UInt32(CrystalBall_Answers.count)))];
        UIView .animateWithDuration(6.0, animations:{
            self.predictionLabel.alpha = 1
            })
    }
    
// MARK: Motion events
    override func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent) {
        NSLog("Motion began")
        self.predictionLabel.text = nil;
        self.predictionLabel.alpha = 0
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent) {
        if ( motion == UIEventSubtype.MotionShake) {
            [self .makePrediction()]
        }
        NSLog("Motion ended")
    }
    
    override func motionCancelled(motion: UIEventSubtype, withEvent event: UIEvent) {
        NSLog("Motion cancelled")
    }

// MARK: Touch events
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        NSLog("Touch began")
        
        self.predictionLabel.text = nil;
        self.predictionLabel.alpha = 0

        
    }
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        NSLog("Touch ended")
        [self .makePrediction()]
    }
    
    override func touchesCancelled(touches: NSSet!, withEvent event: UIEvent!) {
        NSLog("Touch cancelled")
    }
}


// notes // MARK: // TODO: