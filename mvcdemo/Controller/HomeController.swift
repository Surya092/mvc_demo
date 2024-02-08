//
//  ViewController.swift
//  mvcdemo
//
//  Created by Suryanarayan Sahu on 07/02/24.
//

import UIKit

class HomeController: UIViewController {
    
    @IBOutlet weak var bottomButton: UIButton!
    @IBOutlet weak var middleButton: UIButton!
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var buttonLabel: UILabel!
    
    var model: TrafficColorModel = TrafficColorModel(topBtnColor: UIColor.red, middleBtnColor: UIColor.green, bottomBtnColor: UIColor.blue)
    
    // MARK: View Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    //MARK: UI Setup
    func setUI() {
        self.topButton.backgroundColor = self.model.topButtonColor
        self.middleButton.backgroundColor = self.model.middleButtonColor
        self.bottomButton.backgroundColor = self.model.bottomButtonColor
        self.buttonLabel.text = "No Button Tapped"
    }
    
    // MARK: Button Actions
    
    @IBAction func topButtonTapped(_ sender: Any) {
        self.buttonLabel.text = "Top Button Tapped"
    }
    
    @IBAction func middleButtonTapped(_ sender: Any) {
        self.buttonLabel.text = "Middle Button Tapped"
    }
    
    @IBAction func bottomButtonTapped(_ sender: Any) {
        self.buttonLabel.text = "Bottom Button Tapped"
    }
    
}

