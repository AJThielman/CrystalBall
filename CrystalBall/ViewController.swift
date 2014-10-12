//
//  ViewController.swift
//  CrystalBall
//
//  Created by Alex Thielman on 10/11/14.
//  Copyright (c) 2014 BroTime. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
        self.predictionLabel.text = "Yes";
    }

    @IBOutlet weak var predictionLabel: UILabel!
    
}

