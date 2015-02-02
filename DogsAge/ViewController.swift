//
//  ViewController.swift
//  DogsAge
//
//  Created by Ariel Orozco on 2/1/15.
//  Copyright (c) 2015 Ariel Orozco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogsAgeTextField: UITextField!
    @IBOutlet weak var resultsTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateButton(sender: UIButton) {
        
        var dogsAge = Double((dogsAgeTextField.text as NSString).doubleValue)
        
        var humanAge = dogsAge * 7
        
        resultsTextField.hidden = false
        resultsTextField.text = "Your dog's simple human age is " + "\(humanAge)" + " years."
        
    }

    @IBAction func calculateComplex(sender: UIButton) {
        
        var dogsAge = Double((dogsAgeTextField.text as NSString).doubleValue)
        var humanAge:Double
        
        if dogsAge > 2 {
            humanAge = (10.5 * 2) + (dogsAge - 2) * 4
        }
        else {
            humanAge = dogsAge * 10.5
        }
        
        resultsTextField.hidden = false
        resultsTextField.text = "Your dog's complex human age is " + "\(humanAge)" + " years."
        
        // Hide keyboard
        dogsAgeTextField.resignFirstResponder()
        
    }
}

