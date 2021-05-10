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
    var notes = [String]()
    
    
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
        table.setNumberOfRows(notes.count, withRowType: "Row")
        
        for rowIndex in 0..<notes.count {
            Set( rowIndex, notes[rowIndex])
            
        }
        
        func Set(row rowIndex: Int, to text: String) {
        guard let row = table.rowController(at: rowIndex) as? NoteSelectRow else { return }
        row.textLabel.setText(text)
        }
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

