//
//  InterfaceController.swift
//  Project1 WatchKit Extension
//
//  Created by sherry on 10/05/2021.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var table: WKInterfaceTable!
    
    
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
        table.setNumberOfRows(10, withRowType: "Row")
        
        for rowIndex in 0 ..<10
        
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

    @IBAction func AddNewNote() {
    }
    
}
