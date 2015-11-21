//
//  ViewController.swift
//  Clock
//
//  Created by Abdurrahman on 10/25/15.
//  Copyright © 2015 Hafiz Developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
    }

    func updateTime() {
        timeLabel.text = NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: NSDateFormatterStyle.MediumStyle/* <here as well */, timeStyle: NSDateFormatterStyle.MediumStyle/* <here change to longStyle, mediumStyle, fullStyle, etc... */)
    }

    // NOTES:
    // Thank you for downloading this project!
    // You don't need to change any code to get your local time! By Xcode, it gets your local time just by writing a few lines of code above!
    // However, you could change the format you want. Play with it! The ones with arrows that I put next to!
    // Change the design and colors around if you like! But anyways, once again thank you and have fun!😀
}

