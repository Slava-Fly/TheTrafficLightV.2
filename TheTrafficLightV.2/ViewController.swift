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
    
    var alphaReal = 0.2

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
    
    
    //var myView: UIView? = nil

    @IBAction func changeColorOfTraffic() {
        
        labelSwitchTheLight.setTitle("NEXT", for: .normal)
        
        if greenView.alpha == yellowView.alpha {
            greenView.alpha = 1
            redView.alpha = alphaReal
        }
        else if greenView.alpha > alphaReal && yellowView.alpha == redView.alpha {
            yellowView.alpha = 1
            greenView.alpha = alphaReal
        }
        else if yellowView.alpha > alphaReal && redView.alpha == greenView.alpha {
            redView.alpha = 1
            yellowView.alpha = alphaReal
        }
    }
    
    
}

