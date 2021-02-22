//
//  RP_ViewController.swift
//  SubWoofer Calculator
//
//  Created by Dorian Raboy-McGowan on 2/16/21.
//

import UIKit

//class RP_ViewController: UIViewController, UITextFieldDelegate {
class RP_ViewController: UIViewController, UITextFieldDelegate {


    @IBOutlet weak var PD_Field: UITextField!
    @IBOutlet weak var BV_Field: UITextField!
    @IBOutlet weak var TF_Field: UITextField!
    
    
    @IBOutlet weak var Output_Field: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        PD_Field.delegate = self
        BV_Field.delegate = self
        TF_Field.delegate = self
    }
    
    
   
    @IBAction func calculatePressed(_ sender: Any) {
        print("Calculate Pressed")
        
        let PD_value = Double(PD_Field.text!)
        let BV_value = Double(BV_Field.text!)
        let TF_value = Double(TF_Field.text!)

        if PD_value != nil && BV_value != nil && TF_value != nil {
            // Valid fields filled. Calculate port length
            
            let numer = 184000000*(PD_value!/2)*(PD_value!/2)*Double.pi
            let deno = ((TF_value!/0.159) * (TF_value!/0.159) * 1728 * BV_value!)
            let sub = 0.823*((PD_value!/2)*(PD_value!/2)*Double.pi).squareRoot()
            
            let total = (((numer/deno) - sub)*1000).rounded() / 1000
            
            Output_Field.text = "\(total) in."
        } else {
            Output_Field.text = "Fill all fields"
        }
        PD_Field.resignFirstResponder()
        BV_Field.resignFirstResponder()
        TF_Field.resignFirstResponder()
    }
    


}
