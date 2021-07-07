//
//  ViewController.swift
//  BullsEye
//
//  Created by datmcl on 7/3/21.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int = 50
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.value = Float(currentValue)
    }
    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Current value of sldier", message: "\(currentValue)", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = Int(slider.value)
    }
}

