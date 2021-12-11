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
        
        redColourValue.text = String("0.30")
        greenColourValue.text = String("0.60")
        blueColourValue.text = String("1.0")
        
        redColourSlider.value = 0.30
        redColourSlider.maximumValue = 1.0
        redColourSlider.minimumValue = 0.0
        
        greenColourSlider.value = 0.60
        greenColourSlider.maximumValue = 1.0
        greenColourSlider.minimumValue = 0.0
        
        blueColourSlider.value = 1.0
        blueColourSlider.maximumValue = 1.0
        blueColourSlider.minimumValue = 0.0
        
    }

    func changeColour() {
    colorView.backgroundColor = UIColor(red: CGFloat(redColourSlider.value), green: CGFloat(greenColourSlider.value), blue: CGFloat(blueColourSlider.value), alpha: 1)
        
    
}
    @IBAction func rgbChanged(_ sender: Any) {
        changeColour()
        redColourValue.text = String(format: "%.2f", redColourSlider.value)
        greenColourValue.text = String(format: "%.2f", greenColourSlider.value)
        blueColourValue.text = String(format: "%.2f", blueColourSlider.value)    }
}
