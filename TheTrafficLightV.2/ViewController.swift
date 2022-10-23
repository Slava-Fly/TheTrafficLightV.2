//
//  ViewController.swift
//  TheTrafficLightV.2
//
//  Created by User on 23.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var labelSwitchTheLight: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.frame = CGRect(x: 130, y: 100, width: 150, height: 150)
        redView.layer.cornerRadius = redView.frame.size.width / 2
        
        yellowView.frame = CGRect(x: 130, y: 300, width: 150, height: 150)
        yellowView.layer.cornerRadius = yellowView.frame.size.width / 2
        
        greenView.frame = CGRect(x: 130, y: 500, width: 150, height: 150)
        greenView.layer.cornerRadius = greenView.frame.size.width / 2
        
        labelSwitchTheLight.layer.cornerRadius = 15
        
        
    }

    @IBAction func changeColorOfTraffic() {
        
    }
    
    
}

