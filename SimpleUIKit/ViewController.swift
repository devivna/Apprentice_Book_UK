//
//  ViewController.swift
//  SimpleUIKit
//
//  Created by Students on 23.12.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var headerText: UILabel!
    
    @IBOutlet weak var targetLabel: UILabel!
        
    
    @IBOutlet weak var slider: UISlider!
    
    var currentValue = 0 // take initial value from IB
    
    
    @IBOutlet weak var sliderMinValueLabel: UILabel!
    
    @IBOutlet weak var sliderMaxValueLabel: UILabel!
    
    
    var targetValue = 0 // it will always be overwritten by the random value later
    
    @IBOutlet weak var scoreTextLabel: UILabel!
    
    @IBOutlet weak var scoreNumberLabel: UILabel!
    
    
    
    @IBOutlet weak var roundNumberLabel: UILabel!
    
    @IBOutlet weak var roundTextLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
    }
        
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lround(Double(slider.value))
        //print("The value of the slider is now: \(slider.value)")
        
    }
    
    @IBAction func showAlert() {
        let message = "The value of the slider is: \(currentValue)"
            + "\nThe target value is: \(targetValue)"
        
        let alert = UIAlertController(
            title: "Excelent!",
            message: message,
            preferredStyle: .alert)
        
        let button = UIAlertAction(
            title: "OK",
            style: .default)
        
        alert.addAction(button)
         present(alert, animated: true)
        
        startNewRound()
    }

    @IBAction func infoButton(_ sender: UIButton) {
    }
    
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
        // targetLabel.text = "\(targetValue)"
    }

}

