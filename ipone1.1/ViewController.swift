//
//  ViewController.swift
//  ipone1.1
//
//  Created by s20151104684 on 17/3/13.
//  Copyright © 2017年 s20151104684. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var output: UITextField!
    
    @IBAction func zero(_ sender: Any) {
        let temp0: Int = 0
        input.text=(input.text!+("\(temp0)"))
    }
    
    @IBAction func one(_ sender: Any) {
        let temp1: Int = 1
        input.text=(input.text!+("\(temp1)"))
    }
    
    @IBAction func two(_ sender: Any) {
        let temp2: Int = 2
        input.text=(input.text!+("\(temp2)"))
    }
    
   
    
    
    @IBAction func suanfa(_ sender: UIButton) {
        let an = sender.currentTitle
       if an=="+"||an=="-"||an=="*"||an=="/"
       {
        input.text = an
        }
    }
    
   
    @IBAction func area(_ sender: Any) {
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

