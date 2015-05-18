//
//  DetailInterfaceController.swift
//  SwiftTableDemo
//
//  Created by zhangalan on 4/18/15.
//  Copyright (c) 2015 zhangalan. All rights reserved.
//

import WatchKit
import Foundation


class DetailInterfaceController: WKInterfaceController {
    @IBOutlet weak var lab: WKInterfaceLabel!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if let name = context as? String{
            lab.setText(name)
        }
        
        // Configure interface objects here.
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
