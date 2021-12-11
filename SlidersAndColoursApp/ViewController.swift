//
//  ViewController.swift
//  SlidersAndColoursApp
//
//  Created by Дмитрий Олейнер on 10.12.2021.
//

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
        
        redColourSlider.value = 0.29
        redColourSlider.minimumValue = 0
        redColourSlider.maximumValue = 1.0
        
        greenColourSlider.value = 0.59
        greenColourSlider.minimumValue = 0
        greenColourSlider.maximumValue = 1.0
        
        blueColourSlider.value = 1.00
        blueColourSlider.minimumValue = 0
        blueColourSlider.maximumValue = 1.0
        
        redColourValue.text = String(redColourSlider.value)
        greenColourValue.text = String(greenColourSlider.value)
        blueColourValue.text = String(blueColourSlider.value)    }


    @IBAction func redSliderAction() {
        redColourValue.text = String(redColourSlider.value)
            }
}

