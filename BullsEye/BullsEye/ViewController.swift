//
//  ViewController.swift
//  BullsEye
//
//  Created by datmcl on 7/3/21.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int = 50
    var targetValue: Int = 0
    var totalScore: Int = 0
    var round: Int = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLablel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
    }
    @IBAction func showAlert() {
        let difference: Int = abs(currentValue - targetValue)
        let points: Int = 100 - difference
        let title: String
        let message = "You scored \(points) points!"
        if difference == 0 {
            title = "Perfect!"
        } else if difference < 5 {
            title = "Almost!"
        } else if difference < 15 {
            title = "Not bad"
        } else {
            title = "Not even close..."
        }
        totalScore += points
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        startNewRound()
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = Int(slider.value)
    }
    
    func startNewRound() {
        round += 1
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
        scoreLablel.text = String(totalScore)
        roundLabel.text = String(round)
    }
}
