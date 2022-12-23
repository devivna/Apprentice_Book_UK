//
//  ViewController.swift
//  SimpleUIKit
//
//  Created by Students on 23.12.2022.
//

import UIKit

class ViewController: UIViewController {

    var currentValue = 50
    
    @IBOutlet weak var headerText: UILabel!
    
    @IBOutlet weak var headerNumber: UILabel!
    
    
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var sliderMinValueLabel: UILabel!
    
    @IBOutlet weak var sliderMaxValueLabel: UILabel!
    
    
    
    @IBOutlet weak var scoreTextLabel: UILabel!
    
    @IBOutlet weak var scoreNumberLabel: UILabel!
    
    
    
    @IBOutlet weak var roundNumberLabel: UILabel!
    
    @IBOutlet weak var roundTextLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lround(Double(slider.value))
        //print("The value of the slider is now: \(slider.value)")
        
    }
    
    @IBAction func showAlert() {
        let message = "The value of the slider is: \(currentValue)"
        
        let alert = UIAlertController(
            title: "Excelent!",
            message: message,
            preferredStyle: .alert)
        
        let button = UIAlertAction(
            title: "OK",
            style: .default)

        alert.addAction(button)
        present(alert, animated: true)
        
    }

    @IBAction func infoButton(_ sender: UIButton) {
    }
    

}

