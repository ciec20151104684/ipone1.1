//
//  ViewController.swift
//  ipone1.1
//
//  Created by s20151104684 on 17/3/13.
//  Copyright © 2017年 s20151104684. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var a1:String=""
    var a2:String=""
    var a3:String=""
    
    
    
    @IBOutlet weak var input: UITextField!
    
   
    
    @IBAction func zero(_ sender: Any) {
        let temp0: Int = 0
        a1 = (a1+("\(temp0)"))
        input.text=a1;
        if(a1=="00")
        {
            a1="0"
            input.text=a1
            return
        }
        
    }
    
    @IBAction func one(_ sender: Any) {
        let temp1: Int  = 1
        a1 = (a1+("\(temp1)"))
        input.text=a1;
    }
    
    @IBAction func two(_ sender: Any) {
        let temp2: Int  = 2
        a1 = (a1+("\(temp2)"))
        input.text=a1;
    }
    
    @IBAction func three(_ sender: Any) {
        let temp3: Int = 3
        a1 = (a1+("\(temp3)"))
        input.text=a1;
    }
   
    @IBAction func four(_ sender: Any) {
        let temp4: Int  = 4
        a1 = (a1+("\(temp4)"))
        input.text=a1;
    }
    
    @IBAction func five(_ sender: Any) {
        let temp5: Int  = 5
        a1 = (a1+("\(temp5)"))
        input.text=a1;
    }
    
    @IBAction func six(_ sender: Any) {
        let temp6: Int  = 6
        a1 = (a1+("\(temp6)"))
        input.text=a1;
    }
    
    @IBAction func seven(_ sender: Any) {
        let temp7: Int  = 7
        a1 = (a1+("\(temp7)"))
        input.text=a1;
    }
    
    @IBAction func eight(_ sender: Any) {
        let temp8: Int = 8
        a1 = (a1+("\(temp8)"))
        input.text=a1;
    }
    
    @IBAction func nine(_ sender: Any) {
        let temp9: Int = 9
        a1 = (a1+("\(temp9)"))
        input.text=a1;
    }
    
    @IBAction func point(_ sender: Any) {
        let temp10:String = "."
        
        a1 = (a1+("\(temp10)"))
        if(a1==".")
        {
            
            input.text = "0."
            a1 = input.text!
        }
        
        
    }
    
    
    @IBAction func suanfa(_ sender: UIButton) {
        let an = sender.currentTitle
        
       if an=="+"||an=="-"||an=="*"||an=="/"
       {
        
       
        a2 = a1
        a1 = ""
        a3 = an!
        return
        }
        else if (an == "=")
       {
        var temp : Double  = 0
        switch a3{
        case "+":
            temp = Double (a1)! + Double (a2)!
        case "-":
            temp = Double (a2)! - Double (a1)!
        case "*":
            temp = Double (a1)! * Double (a2)!
        case "/":
            if (a1 == "0")
            {
                input.text = "falut"
                return
            }
            temp = Double (a2)! / Double (a1)!
            
        default:
            temp = 0;
            
           
        }
        input.text = "\(temp)"
        a1=String( temp)
        a2=""
        
        }
        
        
        
            }
    
    @IBAction func clear(_ sender: UIButton) {
        input.text=""
        a1=""
        a2=""
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

