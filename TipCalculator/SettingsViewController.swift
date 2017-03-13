//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Janvier Wijaya on 3/12/17.
//  Copyright © 2017 Janvier Wijaya. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
  @IBOutlet weak var tipPct1Label: UITextField!
  @IBOutlet weak var tipPct2Label: UITextField!
  @IBOutlet weak var tipPct3Label: UITextField!

  var engine: CalculatorEngine!

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)

    tipPct1Label.text = String(engine.getTipPct(0))
    tipPct2Label.text = String(engine.getTipPct(1))
    tipPct3Label.text = String(engine.getTipPct(2))
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    tipPct1Label.becomeFirstResponder()
  }

  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)

    saveTipPct1(tipPct1Label)
    saveTipPct2(tipPct2Label)
    saveTipPct3(tipPct3Label)
  }

  @IBAction func tapOnView(_ sender: UITapGestureRecognizer) {
    view.endEditing(true)
  }

  @IBAction func saveTipPct1(_ sender: UITextField) {
    let index = 0
    let value = Int(tipPct1Label.text!) ?? 0
    if value <= 0 {
      tipPct1Label.text = String(engine.getTipPct(index))
    } else {
      engine.setTipPct(index, with: value)
    }
  }

  @IBAction func saveTipPct2(_ sender: UITextField) {
    let index = 1
    let value = Int(tipPct2Label.text!) ?? 0
    if value <= 0 {
      tipPct2Label.text = String(engine.getTipPct(index))
    } else {
      engine.setTipPct(index, with: value)
    }
  }

  @IBAction func saveTipPct3(_ sender: UITextField) {
    let index = 2
    let value = Int(tipPct3Label.text!) ?? 0
    if value <= 0 {
      tipPct3Label.text = String(engine.getTipPct(index))
    } else {
      engine.setTipPct(index, with: value)
    }
  }
}
