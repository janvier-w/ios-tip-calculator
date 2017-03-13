//
//  CalculatorEngine.swift
//  TipCalculator
//
//  Created by Janvier Wijaya on 3/12/17.
//  Copyright © 2017 Janvier Wijaya. All rights reserved.
//

import Foundation

class CalculatorEngine {
  private let defaults = UserDefaults.standard

  private let defaultTipPcts = [15, 18, 20]

  private var currentTipPcts = [ 0,  0,  0]

  init() {
    loadUserDefaults()
  }

  func getNumTipPcts() -> Int {
    return currentTipPcts.count
  }

  func getTipPct(_ index: Int) -> Int {
    return currentTipPcts[index]
  }

  func setTipPct(_ index: Int, with value: Int) {
    currentTipPcts[index] = value;
    defaults.set(currentTipPcts[index],
        forKey: String(format: "tip_pct_%d", index + 1))
    defaults.synchronize()
  }

  func loadUserDefaults() {
    for index in 0...currentTipPcts.count - 1 {
      let tipPct = defaults.integer(
          forKey: String(format: "tip_pct_%d", index + 1))
      setTipPct(index, with: (tipPct == 0) ? defaultTipPcts[0] : tipPct)
    }
  }

  func saveUserDefaults() {
    for index in 0...currentTipPcts.count - 1 {
      defaults.set(currentTipPcts[index],
          forKey: String(format: "tip_pct_%d", index + 1))
    }
    defaults.synchronize()
  }
}
