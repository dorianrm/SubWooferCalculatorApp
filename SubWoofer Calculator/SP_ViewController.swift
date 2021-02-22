//
//  SP_ViewController.swift
//  SubWoofer Calculator
//
//  Created by Dorian Raboy-McGowan on 2/17/21.
//

import UIKit

class SP_ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var PW_Field: UITextField!
    @IBOutlet weak var PH_Field: UITextField!
    @IBOutlet weak var BV_Field: UITextField!
    @IBOutlet weak var TF_Field: UITextField!
    
    @IBOutlet weak var Output_Field: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        PW_Field.delegate = self
        PH_Field.delegate = self
        BV_Field.delegate = self
        TF_Field.delegate = self
    }
    
    @IBAction func calculatePressed(_ sender: Any) {
        print("Calculate Pressed")
        
        let PW_value = Double(PW_Field.text!)
        let PH_value = Double(PH_Field.text!)
        let BV_value = Double(BV_Field.text!)
        let TF_value = Double(TF_Field.text!)

        if PW_value != nil && PH_value != nil && BV_value != nil && TF_value != nil {
            // Valid fields filled. Calculate port length
            
            let numer = 184000000*PW_value!*PH_value!
            let deno = ((TF_value!/0.159) * (TF_value!/0.159) * 1728 * BV_value!)
            let sub = 0.823*(PW_value!*PH_value!).squareRoot()
            
            let total = (((numer/deno) - sub)*1000).rounded() / 1000
            
            Output_Field.text = "\(total) in."
        } else {
            Output_Field.text = "Fill all fields"
        }
        PW_Field.resignFirstResponder()
        PH_Field.resignFirstResponder()
        BV_Field.resignFirstResponder()
        TF_Field.resignFirstResponder()
    }

}
