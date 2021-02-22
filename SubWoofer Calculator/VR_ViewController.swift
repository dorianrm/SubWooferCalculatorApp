//
//  VR_ViewController.swift
//  SubWoofer Calculator
//
//  Created by Dorian Raboy-McGowan on 2/21/21.
//

import UIKit

class VR_ViewController: UIViewController, UITextFieldDelegate {


    @IBOutlet weak var Width_Field: UITextField!
    @IBOutlet weak var Height_Field: UITextField!
    @IBOutlet weak var Depth_Field: UITextField!
    @IBOutlet weak var Thick_Field: UITextField!

    @IBOutlet weak var Output_Field: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Width_Field.delegate = self
        Height_Field.delegate = self
        Depth_Field.delegate = self
        Thick_Field.delegate = self
    }

    @IBAction func calculatePressed(_ sender: Any) {
        print("Calculate Pressed")
        
        let Width_value = Double(Width_Field.text!)
        let Height_value = Double(Height_Field.text!)
        let Depth_value = Double(Depth_Field.text!)
        let Thick_value = Double(Thick_Field.text!)

        if Width_value != nil && Height_value != nil && Depth_value != nil && Thick_value != nil {
            // Valid fields filled. Calculate port length
            
            let width = Width_value! - (2*Thick_value!)
            let height = Height_value! - (2*Thick_value!)
            let depth = Depth_value! - (2*Thick_value!)
            let volume = (width * height * depth) / 1728
            let total = (volume * 1000).rounded() / 1000
            
            Output_Field.text = "\(total) cubic ft."
        } else {
            Output_Field.text = "Fill all fields"
        }
        Width_Field.resignFirstResponder()
        Height_Field.resignFirstResponder()
        Depth_Field.resignFirstResponder()
        Thick_Field.resignFirstResponder()
    }
    
}
