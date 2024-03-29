//
//  ViewController.swift
//  beatles
//
//  Created by Aileen Pierce
//  Copyright (c) Aileen Pierce. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var coffeeImage: UIImageView!
    @IBOutlet weak var imageControl: UISegmentedControl!
    @IBOutlet weak var capitalSwitch: UISwitch!
    @IBOutlet weak var fontSizeLabel: UILabel!
    
    func updateImage(){
        if imageControl.selectedSegmentIndex == 0 {
            titleLabel.text="single use"
            coffeeImage.image=UIImage(named: "aeropress")
        }
        else if imageControl.selectedSegmentIndex == 1 {
            titleLabel.text="Batch brew"
            coffeeImage.image=UIImage(named: "chemex")
        }
    }
    
    func updateCaps(){
        if capitalSwitch.isOn {
            titleLabel.text=titleLabel.text?.uppercased()
                titleLabel.textColor = UIColor(red: 1,
                                           green: 0,
                                           blue: 0,
                                           alpha: 1)
        } else {
            titleLabel.text=titleLabel.text?.lowercased()
            titleLabel.textColor = UIColor(red: 0,
                                           green: 0,
                                           blue: 0,
                                           alpha: 1)
        }
    }
    @IBAction func changeInfo(_ sender: UISegmentedControl) {
        updateImage()
        updateCaps()
    }
    
    @IBAction func updateFont(_ sender: UISwitch) {
        updateCaps()
    }
    
    @IBAction func changeFontSize(_ sender: UISlider) {
        let fontSize=sender.value //float
        fontSizeLabel.text=String(format: "%.0f", fontSize) //convert float to String
        let fontSizeCGFloat=CGFloat(fontSize) //convert float to CGFloat
        titleLabel.font=UIFont.systemFont(ofSize: fontSizeCGFloat) //create a UIFont object and assign to the font property
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

