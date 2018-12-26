//
//  ViewController.swift
//  Abstract Factory
//
//  Created by Admin on 26.12.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var chair: Chair?
    var table: Table?
    var sofa: Sofa?

    @IBAction func orderKitchenAction(_ sender: UIButton) {
        chair = KitchenFactory().createChair()
        table = KitchenFactory().createTable()
        sofa = KitchenFactory().createSofa()
    }
    
    @IBAction func orderBedroomAction(_ sender: UIButton) {
        chair = BedroomFactory().createChair()
        table = BedroomFactory().createTable()
        sofa = BedroomFactory().createSofa()
    }
}

