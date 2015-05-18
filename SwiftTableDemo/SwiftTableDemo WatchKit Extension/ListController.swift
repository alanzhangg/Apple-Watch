//
//  ListController.swift
//  SwiftTableDemo
//
//  Created by zhangalan on 4/18/15.
//  Copyright (c) 2015 zhangalan. All rights reserved.
//

import WatchKit
import Foundation


class ListController: WKInterfaceController {

    @IBOutlet weak var laTable: WKInterfaceTable!
    let data = ["swift", "swift1", "swift2"]
    let name = ["ss", "aa", "dd"]
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        laTable.setNumberOfRows(3, withRowType: "rowCell")
        for (index, str) in enumerate(data){
            let cell = laTable.rowControllerAtIndex(Int(index)) as! RowCell
            cell.projectName.setText(data[Int(index)])
            cell.teacherName.setText(name[Int(index)])
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func contextForSegueWithIdentifier(segueIdentifier: String, inTable table: WKInterfaceTable, rowIndex: Int) -> AnyObject? {
        return data[rowIndex]
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
