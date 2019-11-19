//
//  ViewController.swift
//  BullsEye
//
//  Created by Pedro Henrique  on 13/11/19.
//  Copyright © 2019 Pedro Henrique . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    var currentValue: Int = 50
    var targetValue = 0
    
    func updateLabels() {
    targetLabel.text = String(targetValue) }
    
    func startNewRound() {
    targetValue = Int.random(in: 1...100)
    currentValue = 50
    slider.value = Float(currentValue)
    updateLabels()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
        updateLabels()
    }

    @IBAction func showAlert() {
    let message = "The value of the slider is: \(currentValue)" +
    "\nThe target value is: \(targetValue)"
    let alert = UIAlertController(title: "Hello, World",
    message: message, preferredStyle: .alert)
    let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
    alert.addAction(action)
      present(alert, animated: true, completion: nil)

        startNewRound()
    }
    
    
    @IBAction func sliderMoved(_ slider: UISlider){
        currentValue = lroundf(slider.value)
    }

}

