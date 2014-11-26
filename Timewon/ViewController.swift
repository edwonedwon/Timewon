//
//  ViewController.swift
//  Timewon
//
//  Created by Edwon on 11/26/14.
//  Copyright (c) 2014 Edwon. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.

        }
    }
    
    var startTime = NSTimeInterval()
    var timer = NSTimer()
    
    func updateTime()
    {
        var currentTime = NSDate.timeIntervalSinceReferenceDate()
        var elapsedTime NSTimeInterval = currentTime - startTime
        let minutes = UInt8(elapsedTime/60)
    }
    
    
    @IBOutlet weak var timeLabel: NSTextField!

    @IBAction func startTrackingTime(sender: AnyObject) {
        timeLabel.stringValue = getCurrentTime()
    }
    
    func getCurrentTime() -> String
    {
        let date = NSDate()
        let formatter = NSDateFormatter()
        formatter.timeStyle = NSDateFormatterStyle.ShortStyle
        var stringValue = formatter.stringFromDate(date)
        
        return stringValue
    }

}

