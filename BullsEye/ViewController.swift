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
    var currentValue: Int = 50
    var targetValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(slider.value)
        targetValue = Int.random(in: 1...100)
       
    }
    
    @IBAction func showAlert() {
    let message = "The value of the slider is: \(currentValue)" +
    "\nThe target value is: \(targetValue)"
    let alert = UIAlertController(title: "Hello, World",
    message: message, preferredStyle: .alert)
    let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
    alert.addAction(action)
      present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func sliderMoved(_ slider: UISlider){
        currentValue = lroundf(slider.value)
    }

}

