//
//  WV_ViewController.swift
//  SubWoofer Calculator
//
//  Created by Dorian Raboy-McGowan on 2/21/21.
//

import UIKit

class WV_ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var W_Field: UITextField!
    @IBOutlet weak var H1_Field: UITextField!
    @IBOutlet weak var H2_Field: UITextField!
    @IBOutlet weak var D_Field: UITextField!
    @IBOutlet weak var T_Field: UITextField!
    
    
    @IBOutlet weak var Output_Field: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        W_Field.delegate = self
        H1_Field.delegate = self
        H2_Field.delegate = self
        D_Field.delegate = self
        T_Field.delegate = self
    }
    

    @IBAction func calculatePressed(_ sender: Any) {
        print("Calculate Pressed")
        
        let Width_value = Double(W_Field.text!)
        let H1_value = Double(H1_Field.text!)
        let H2_value = Double(H2_Field.text!)
        let Depth_value = Double(D_Field.text!)
        let Thick_value = Double(T_Field.text!)

        if Width_value != nil && H1_value != nil && H1_value != nil && Depth_value != nil && Thick_value != nil {
            // Valid fields filled. Calculate port length
            
            let width = Width_value! - (2*Thick_value!)
            let h1 = H1_value! - (2*Thick_value!)
            let h2 = H2_value! - (2*Thick_value!)
            let depth = Depth_value! - (2*Thick_value!)
            
            let rect_volume = (width * h2 * depth)
            let tri_volume = (0.5*(h1-h2)*depth) * width
            let volume = (rect_volume + tri_volume) / 1728
            
            let total = (volume * 1000).rounded() / 1000
            
            Output_Field.text = "\(total) cubic ft."
        } else {
            Output_Field.text = "Fill all fields"
        }
        W_Field.resignFirstResponder()
        H1_Field.resignFirstResponder()
        H2_Field.resignFirstResponder()
        D_Field.resignFirstResponder()
        T_Field.resignFirstResponder()
    }
    
}
