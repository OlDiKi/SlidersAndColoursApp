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
        
        redColourSlider.maximumValue = 1.0
        redColourSlider.minimumValue = 0.0
        
        greenColourSlider.maximumValue = 1.0
        greenColourSlider.minimumValue = 0.0
        
        blueColourSlider.maximumValue = 1.0
        blueColourSlider.minimumValue = 0.0
        
    }


    @IBAction func redSliderAction() {
        redColourValue.text = String(format: "%.2f", redColourSlider.value)
        let redSlider = CGFloat(redColourSlider.value)
        colorView.backgroundColor = colorView.backgroundColor?.withAlphaComponent(redSlider)
    }
    @IBAction func greenSliderAction() {
        greenColourValue.text = String(format: "%.2f", greenColourSlider.value)
        let greenSlider = CGFloat(greenColourSlider.value)
        colorView.backgroundColor = colorView.backgroundColor?.withAlphaComponent(greenSlider)
    }
    @IBAction func blueSliderAction() {
        blueColourValue.text = String(format: "%.2f", blueColourSlider.value)
        let blueSlider = CGFloat(blueColourSlider.value)
        colorView.backgroundColor = colorView.backgroundColor?.withAlphaComponent(blueSlider)
    }
    
    
}
