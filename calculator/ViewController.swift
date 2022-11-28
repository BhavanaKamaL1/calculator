//
//  ViewController.swift
//  calculator
//
//  Created by DDUKK on 22/09/22.
//

import UIKit

class ViewController: UIViewController {
    
  //  var calclass = CalClass()
    
    public var num:Int = 0
    public var value:String = ""

    @IBOutlet weak var work: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func buttonoperation(_ sender: UIButton) {
        if let printvalue = sender.titleLabel?.text {
            work.text?.append(printvalue)
            
        }
    }
    
    
    @IBAction func division(_ sender: Any) {
        num = Int(work.text!) ?? 0
        print(num)
        value = "/"
        work.text = ""
    }
    @IBAction func multiply(_ sender: Any) {
        num = Int(work.text!) ?? 0
        print(num)
        value = "*"
        work.text = ""
    }
    @IBAction func subtract(_ sender: Any) {
        num = Int(work.text!) ?? 0
        print(num)
        value = "-"
        work.text = ""
    }
    @IBAction func addition(_ sender: Any) {
        num = Int(work.text!) ?? 0
        print(num)
        value = "+"
        work.text = ""
    }
    @IBAction func clear(_ sender: Any) {
        work.text = ""
    }
    
    
    @IBAction func equalto(_ sender: Any) {
        
        
        let num1 = Int(work.text!) ?? 0
        print(num1)
        switch value {
        case "/" : let div: Float = Float(num/num1)
            print(div)
            work.text = String(div)
        case "*" : let mul = num*num1
            work.text = String(mul)
        case "-" : let sub = num-num1
            work.text = String(sub)
        case "+" : let add = num+num1
            work.text = String(add)
        default : print("Not Valid")
        }
    }
    
}

