//
//  ViewController.swift
//  TipCalculator
//
//  Created by Lucas on 1/24/15.
//  Copyright (c) 2015 AWLKA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var totalTextField : UITextField!
    @IBOutlet var taxPctSlider : UISlider!
    @IBOutlet var taxtPctLabel : UILabel!
    @IBOutlet var resultsTextView : UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateTapped(sender : AnyObject) {

    }

    @IBAction func taxPercentageChanged(sender : AnyObject) {

    }

    @IBAction func viewTapped(sender : AnyObject) {

    }

    let tipCalc = TipCalculatorModel(total: 33.25, taxPct: 0.06)

    func refreshUI() {
        totalTextField.text = String(format: "%0.2f", tipCalc.total)
        taxPctSlider.value = Float(tipCalc.taxPct) * 100.0
        taxtPctLabel.text = "Tax Percentage (\(Int(taxPctSlider.value))%)"
        resultsTextView.text = ""
    }


}

