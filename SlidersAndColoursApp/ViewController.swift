//
//  ViewController.swift
//  SlidersAndColoursApp
//
//  Created by Дмитрий Олейнер on 10.12.2021.
//
import Foundation
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redColourValue: UILabel!
    @IBOutlet weak var greenColourValue: UILabel!
    @IBOutlet weak var blueColourValue: UILabel!
    
    @IBOutlet weak var redColourSlider: UISlider!
    @IBOutlet weak var greenColourSlider: UISlider!
    @IBOutlet weak var blueColourSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 10
        
        redColourSlider.minimumTrackTintColor = .red
        greenColourSlider.minimumTrackTintColor = .green
        
        changeColour()
        setValue(for: redColourValue, greenColourValue, blueColourValue)

    }

    private func changeColour() {
    colorView.backgroundColor = UIColor(red: CGFloat(redColourSlider.value), green: CGFloat(greenColourSlider.value), blue: CGFloat(blueColourSlider.value), alpha: 1)
        
    
}
    @IBAction func rgbChanged(_ sender: UISlider) {
        changeColour()
        
        switch sender {
        case redColourSlider: setValue(for: redColourValue)
        case greenColourSlider: setValue(for: greenColourValue)
        default: setValue(for: blueColourValue)
        }
    }
    
private func setValue(for values: UILabel...) {
    values.forEach { value in
        switch value {
        case redColourValue:
            value.text = string(from: redColourSlider)
        case greenColourValue:
            value.text = string(from: greenColourSlider)
        default:
            value.text = string(from: blueColourSlider)
        }
    }
}

    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}
