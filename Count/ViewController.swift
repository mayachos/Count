//
//  ViewController.swift
//  Count
//
//  Created by maya on 2020/05/10.
//  Copyright © 2020 maya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number: Int = 0
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plus() {
        number = number + 1
        label.text = String(number)
        chengeColor(number: number)
    }
    
    @IBAction func minus() {
        number = number - 1
        label.text = String(number)
        chengeColor(number: number)
    }
    
    @IBAction func mult() {
        number = number * 10
        label.text = String(number)
        chengeColor(number: number)
    }
    
    @IBAction func div() {
        number = number / 10
        label.text = String(number)
        chengeColor(number: number)
    }
    
    @IBAction func clear() {
        number = 0
        label.text = String(number)
        chengeColor(number: number)
    }
    
    func chengeColor(number: Int) {
        if number >= 10 {
            label.textColor = UIColor.red
        } else if number <= -10 {
            label.textColor = UIColor.blue
        } else {
            label.textColor = UIColor.black
        }
    }

}

