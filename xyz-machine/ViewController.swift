//
//  ViewController.swift
//  xyz-machine
//
//  Created by Ricardo Herrera Petit on 1/6/19.
//  Copyright © 2019 Ricardo Herrera Petit. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    @IBOutlet weak var xLabel: UILabel!
    @IBOutlet weak var yLabel: UILabel!
    @IBOutlet weak var zLabel: UILabel!
    
    var motionManager: CMMotionManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        motionManager = CMMotionManager()
        motionManager.startAccelerometerUpdates(to: .main, withHandler: updateLabels)
        
    }

    func updateLabels(data: CMAccelerometerData?, error:Error?) {
        guard let accelerometerData = data else { return }
        print(accelerometerData)
        
    }

}

