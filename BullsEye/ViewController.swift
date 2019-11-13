//
//  ViewController.swift
//  BullsEye
//
//  Created by Pedro Henrique  on 13/11/19.
//  Copyright © 2019 Pedro Henrique . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func showAlert() {
      let alert = UIAlertController(title: "Hello, World",
    message: "This is my first app!", preferredStyle: .alert)
    let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
    alert.addAction(action)
      present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func sliderMoved(_ slider: UISlider){
        print("O valor da sliderbar e : \(slider.value)")
    }

}

