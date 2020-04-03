//
//  MainViewController.swift
//  PassingDataUsingDelegate
//
//  Created by apple on 03/04/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   @IBAction func goToNextAction(_ sender: UIButton) {
    
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let vc = storyboard.instantiateViewController(identifier: "secondVC") as? SecondViewController
    vc?.delegate = self
    present(vc!, animated: true, completion: nil)
    }

}

extension MainViewController:PizzaDelegate{
    func onPizzaReady(type: String) {
        print("Pizza ready. The best pizza of all pizzas is... \(type)")
    }
}
