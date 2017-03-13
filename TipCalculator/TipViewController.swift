//
//  TipViewController.swift
//  TipCalculator
//
//  Created by Janvier Wijaya on 3/12/17.
//  Copyright © 2017 Janvier Wijaya. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {
  @IBOutlet weak var billField: UITextField!
  @IBOutlet weak var tipLabel: UILabel!
  @IBOutlet weak var totalLabel: UILabel!
  @IBOutlet weak var tipPctControl: UISegmentedControl!

  var engine = CalculatorEngine()

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)

    let numSegments = min(tipPctControl.numberOfSegments, engine.getNumTipPcts())
    for index in 0...numSegments - 1 {
      tipPctControl.setTitle(String(format: "%d%%", engine.getTipPct(index)),
          forSegmentAt: index)
    }

    calculateTip(tipPctControl)
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    billField.becomeFirstResponder()
  }

  @IBAction func tapOnView(_ sender: UITapGestureRecognizer) {
    view.endEditing(true);
  }

  @IBAction func calculateTip(_ sender: AnyObject) {
    let billAmt = Double(billField.text!) ?? 0
    let tipPct = Double(engine.getTipPct(tipPctControl.selectedSegmentIndex))
    let tipAmt = 0.01 * tipPct * billAmt
    let totalAmt = billAmt + tipAmt

    tipLabel.text = String(format: "$%.2f", tipAmt)
    totalLabel.text = String(format: "$%.2f", totalAmt)
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if (segue.identifier == "ShowSettings") {
      (segue.destination as! SettingsViewController).engine = engine
    }
  }
}
