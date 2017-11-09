//
//  ViewController.swift
//  ChangeColor
//
//  Created by Yi-Yun Chen on 2017/11/6.
//  Copyright © 2017年 Yi-Yun Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func colorSliderChange(_ sender: UISlider) {
        let number = String(format: "%.1f", (sender.value * 255))
        
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        
        if sender == redSlider {
            redLabel.text = number
        } else if sender == greenSlider {
            greenLabel.text = number
        } else {
            blueLabel.text = number
        }
    }
    
}

