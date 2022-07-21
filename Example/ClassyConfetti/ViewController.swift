//
//  ViewController.swift
//  ClassyConfetti
//
//  Created by saihariG on 07/21/2022.
//  Copyright (c) 2022 saihariG. All rights reserved.
//

import UIKit
import ClassyConfetti

class ViewController: UIViewController {

    let confetti = classyConfetti()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        confetti.emit(in: view, with: .fromTop)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

