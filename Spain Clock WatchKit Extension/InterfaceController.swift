//
//  InterfaceController.swift
//  Spain Clock WatchKit Extension
//
//  Created by Mateo Pidal on 03/02/2022.
//  Copyright © 2022 Mateo Pidal. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var date_Spain: WKInterfaceDate!
    
    @IBOutlet weak var date_Argentina: WKInterfaceDate!
    
    @IBOutlet weak var lbl_Argentina: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    date_Argentina.setTimeZone(TimeZone.init(secondsFromGMT: -3600 * 3))
    date_Spain.setTimeZone(TimeZone.init(secondsFromGMT: 3600))
        
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
