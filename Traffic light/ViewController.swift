//
//  ViewController.swift
//  Traffic light
//
//  Created by MacBook Pro 13 2020 on 17.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redCircleLabel: UIView!
    @IBOutlet weak var yellowCircleLabel: UIView!
    @IBOutlet weak var greenCircleLabel: UIView!

    @IBOutlet weak var mainButton: UIButton!

    private var currentColor = CurrentColor.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3



    override func viewDidLoad() {
        super.viewDidLoad()
        redCircleLabel.layer.cornerRadius = 75
        yellowCircleLabel.layer.cornerRadius = 75
        greenCircleLabel.layer.cornerRadius = 75
        mainButton.layer.cornerRadius = 20

        redCircleLabel.alpha = lightIsOff
        greenCircleLabel.alpha = lightIsOff
        yellowCircleLabel.alpha = lightIsOff
    }


    @IBAction func changeCircleButton(_ sender: Any) {
        mainButton.setTitle("NEXT", for: .normal)

        switch currentColor {
        case .red:
            redCircleLabel.alpha = lightIsOn
            greenCircleLabel.alpha = lightIsOff
            currentColor = .yellow
        case .yellow:
            redCircleLabel.alpha = lightIsOff
            yellowCircleLabel.alpha = lightIsOn
            currentColor = .green
        case .green:
            greenCircleLabel.alpha = lightIsOn
            yellowCircleLabel.alpha = lightIsOff
            currentColor = .red
        }
    }
}

extension ViewController {
    enum CurrentColor {
        case red, yellow, green
    }
}
