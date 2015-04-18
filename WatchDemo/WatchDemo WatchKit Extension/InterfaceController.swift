//
//  InterfaceController.swift
//  WatchDemo WatchKit Extension
//
//  Created by zhangalan on 4/18/15.
//  Copyright (c) 2015 zhangalan. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var current: Int = 0
    
    @IBOutlet weak var imageView: WKInterfaceImage!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        if segueIdentifier == "lzz"{
            return ekoData(currents: current)
        }
        return nil
    }
    
    @IBAction func goTo() {
        pushControllerWithName("lz", context: nil)
    }
    @IBAction func action(value: Float) {
        current = Int(value)
        changeImage()
        println("\(current)")
    }
    
    func changeImage(){
        imageView.setImageNamed("eko\(current)")
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}

class ekoData {
    var current: Int
    init(currents: Int){
        current = currents
    }
}


