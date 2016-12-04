//
//  ViewController.swift
//  UIFun
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // TODO: Setup the IBOutlets
    
    @IBOutlet weak var paintBucket: UIImageView!
    @IBOutlet weak var btnColorSegmenter1: UISegmentedControl!
    @IBOutlet weak var btnColorSegmenter2: UISegmentedControl!
    
    func getColorFromIndex(index:Int) -> String {
        var color = "Blue"
        switch index {
        case 0:
            color = "Red"
        case 1:
            color = "Yellow"
        default:
            color = "Blue"
        }
        return color
    }
    
    func mixColor() {
        let color1 = getColorFromIndex(index: btnColorSegmenter1.selectedSegmentIndex)
        let color2 = getColorFromIndex(index: btnColorSegmenter2.selectedSegmentIndex)
        print(color1,color2)
        paintBucket.backgroundColor = mixColors(first:color1, second: color2)
    }
    
    
    @IBAction func btnColorSegmenter1(_ sender: UISegmentedControl) {
        mixColor()
    }
    @IBAction func btnColorSegmenter2(_ sender: UISegmentedControl) {
        mixColor()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        mixColor()
    }

    func mixColors(first: String, second: String) -> UIColor {
        
        switch (first, second) {
        case ("Red", "Red"):
            return UIColor.red
        case ("Red", "Yellow"), ("Yellow", "Red"):
            return UIColor.orange
        case ("Red", "Blue"), ("Blue", "Red"):
            return UIColor.purple
        case ("Yellow", "Yellow"):
            return UIColor.yellow
        case ("Yellow", "Blue"), ("Blue", "Yellow"):
            return UIColor.green
        case ("Blue", "Blue"):
            return UIColor.blue
        default:
            return UIColor.white
        }
        
    }
    
}
