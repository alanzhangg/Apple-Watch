//
//  InterfaceController2.swift
//  WatchDemo
//
//  Created by zhangalan on 4/18/15.
//  Copyright (c) 2015 zhangalan. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController2: WKInterfaceController {

    @IBOutlet weak var imageView: WKInterfaceImage!
    @IBOutlet weak var nameLabel: WKInterfaceLabel!
    
    var 当前图片: Int = 0
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if let data = context as? ekoData{
            当前图片 = data.current
        }
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        imageView.setImageNamed("eko\(当前图片)")
        nameLabel.setText("第\(当前图片)张图")
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
