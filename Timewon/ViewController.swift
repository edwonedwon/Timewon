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
    @IBOutlet weak var timeLabel: NSTextField!

    @IBAction func startTrackingTime(sender: AnyObject) {
       timeLabel.stringValue = getCurrentTime()
        println("printing a dipe")
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

