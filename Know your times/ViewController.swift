//
//  ViewController.swift
//  Know your times
//
//  Created by Lewis Jones on 03/03/2016.
//  Copyright © 2016 Rodrigo Pena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var time = 0
    
    @IBOutlet var timerLbl: UILabel!
    
    func increaseTimer() {
        time++
        timerLbl.text = "\(time)"
        
    }
    
    @IBAction func play(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
        
    }
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()

    }
    @IBAction func stop(sender: AnyObject) {
        timer.invalidate()
        time = 0
        timerLbl.text = "0"
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

