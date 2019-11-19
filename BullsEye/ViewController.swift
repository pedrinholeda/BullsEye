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
    @IBOutlet weak var scoreLabel: UILabel! // contador de pontos
    @IBOutlet weak var roundLabel: UILabel!
    
    var currentValue: Int = 50 // iniciando no meio do slider
    var targetValue = 0
    var score = 0
    var round = 0
    
    func updateLabels() {
    targetLabel.text = String(targetValue)
    scoreLabel.text = String(score)
    roundLabel.text = String(round)
    }
    
    func startNewRound() {
    round += 1 
    targetValue = Int.random(in: 1...100)
    currentValue = 50
    slider.value = Float(currentValue)
    updateLabels()
    }
    
    override func viewDidLoad() {
        startNewGame() 
        super.viewDidLoad()
        startNewRound()
        updateLabels()
    }

    @IBAction func showAlert() {
        let difference = abs(currentValue - targetValue)
        var points = 100 - difference
        
        let title: String
          if difference == 0 {
            title = "Perfect!"
            points += 100
          } else if difference < 5 {
            title = "You almost had it!"
            points += 50
          } else if difference < 10 {
            title = "Pretty good!"
        } else {
        title = "Not even close..." }
        
        score += points
        
    let message = "You scored \(points) points"
        
    let alert = UIAlertController(title: title,
    message: message, preferredStyle: .alert)
        
    let action = UIAlertAction(title: "OK", style: .default, handler: { _ in
    self.startNewRound() }) // starta um novo round

    alert.addAction(action)
        
      present(alert, animated: true, completion: nil) // faz o alerta ficar visivel
    }
    
    @IBAction func startNewGame() {
      score = 0
      round = 0
      startNewRound()
    }
    
    @IBAction func sliderMoved(_ slider: UISlider){
        currentValue = lroundf(slider.value)
    }

}

