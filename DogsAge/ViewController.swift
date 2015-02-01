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
        
        var dogsAge = dogsAgeTextField.text.toInt()!
        
        var humanAge = dogsAge * 7
        
        resultsTextField.hidden = false
        resultsTextField.text = "Your dog's human age is " + "\(humanAge)" + " years."
        
    }

}

