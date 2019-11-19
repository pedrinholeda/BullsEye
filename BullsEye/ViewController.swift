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
    @IBOutlet weak var scoreLabel: UILabel!
    var currentValue: Int = 50
    var targetValue = 0
    var score = 0
    
    func updateLabels() {
    targetLabel.text = String(targetValue)
    scoreLabel.text = String(score)
    }
    
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
        let difference = abs(currentValue - targetValue)
        let points = 100 - difference
        
        score += points
        
    let message = "You scored \(points) points"
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

