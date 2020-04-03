//
//  SecondViewController.swift
//  PassingDataUsingDelegate
//
//  Created by apple on 03/04/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

protocol PizzaDelegate {
    func onPizzaReady(type:String)
}

class SecondViewController: UIViewController {
    
     var delegate: PizzaDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func goToBcacAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        delegate?.onPizzaReady(type: "Pizza di Mama")
    }
}
