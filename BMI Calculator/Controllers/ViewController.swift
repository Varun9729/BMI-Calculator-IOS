//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let BMI = weight/pow(height, 2)
        print(BMI)
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format: "%.2f", BMI)
        self.present(secondVC, animated: true, completion: nil)
    }
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        var currentValue = sender.value
        let height = String(format: "%.2f", currentValue)
        heightLabel.text = "\(height)m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        var weightValue = sender.value
        let weight = String(format: "%.0f", weightValue)
        weightLabel.text = "\(weight)kg"
    }
}

