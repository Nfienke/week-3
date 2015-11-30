//
//  ViewController.swift
//  test week 3
//
//  Created by Nienke Pot on 15-11-15.
//  Copyright © 2015 Nienke Pot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tekstfield1: UITextField!
    @IBOutlet weak var tekstfield2: UITextField!
    @IBOutlet weak var job: UILabel!
    @IBOutlet weak var adj: UILabel!
    
    @IBOutlet weak var colour: UISegmentedControl!
    let myDefaults = NSUserDefaults.standardUserDefaults()
    let Colour = "Colour"
    
    func getcolour(){
        switch (myDefaults.integerForKey(Colour)){
        case 0:
            self.view.backgroundColor = UIColor.redColor()
        case 1:
            self.view.backgroundColor = UIColor.greenColor()
        case 2:
            self.view.backgroundColor = UIColor.yellowColor()
        default:
            break
        }
    }
    
    @IBAction func save(sender: AnyObject) {
        myDefaults.setInteger(colour.selectedSegmentIndex, forKey: Colour)
        getcolour()
    }
    
    @IBAction func tekstbutton(sender: UIButton) {
            }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "datapasser" {
            if let destinationVC = segue.destinationViewController as? view2controller{
                if tekstfield1.text != "" {
                    destinationVC.L1 = tekstfield1.text!
                }
                else{
                    destinationVC.L1 = "jobless?"
                }
                if tekstfield2.text != "" {
                    destinationVC.L2 = tekstfield2.text!
                }
                else{
                    destinationVC.L2 = "something?"
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getcolour()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}