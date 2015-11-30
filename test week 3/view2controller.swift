//
//  view2controller.swift
//  test week 3
//
//  Created by Nienke Pot on 15-11-15.
//  Copyright © 2015 Nienke Pot. All rights reserved.
//

import Foundation
import UIKit



class view2controller: UIViewController {
    
    var L1 = ""
    var L2 = ""
    
    
    
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Label2: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        Label1.text = L1
        Label2.text = L2
        
    }
}