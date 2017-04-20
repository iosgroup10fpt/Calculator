//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Cntt22 on 4/15/17.
//  Copyright © 2017 Cntt22. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numberScreen:Double = 0
    var previousnumber:Double = 0
    var performingMath = false
    var afterequal = false
    var operation = 0
    var positive = true
    //Loại bỏ .0
    func forZero(temp: Double) -> String{
        let tempVar = String(format: "%g", temp)
        return tempVar
    }

    @IBAction func Dos(_ sender: Any) {
        var textresult:String = lb_display.text!
        let countdos = textresult.characters.filter {$0 == "."}.count
        if afterequal == true || lb_display.text == "" {
            lb_display.text = "0."
        }
        else if lb_display.text != "" && countdos == 0 {
            lb_display.text = lb_display.text! + "."
        }

    }
    @IBOutlet weak var lb_display: UILabel!
    //Event bam so
    @IBAction func numbers(_ sender: UIButton) {
        if(afterequal){
            lb_display.text = String(0)
        }
        else{
            if performingMath == true {
                previousnumber = Double(lb_display.text!)!
                
                lb_display.text = String(sender.tag - 1)
                //NSLog(String(sender.tag - 1))
                performingMath = false
            }
            else {
                do{
                    
                    if(lb_display.text == "0"){
                        lb_display.text = ""
                        lb_display.text = lb_display.text! + String(sender.tag - 1)
                        numberScreen = Double(lb_display.text!)!
                    }
                    else if(lb_display.text == "inf"){
                        lb_display.text = String(0)
                        //                numberScreen = Double(lb_display.text!)!
                    }
                    else if(lb_display.text == "nan"){
                        lb_display.text = String(0)
                    }
                        //            if(lb_display.text == "nan"){
                        //                lb_display.text = String(0)
                        //                //                numberScreen = Double(lb_display.text!)!
                        //            }
                        
                    else{
                        lb_display.text = lb_display.text! + String(sender.tag - 1)
                        numberScreen = Double(lb_display.text!)!
                    }
                    
                }
                catch{
                    lb_display.text = String(0)
                }
                
                
                
            }

        }
        
    }
    
    @IBAction func btnPhanTram(_ sender: Any) {
        if(lb_display.text != ""){
//            if(afterequal){
//                
//            }
            NSLog(String("Previous:" + String(previousnumber)))
            NSLog(String(previousnumber/100))
            
            lb_display.text = String(forZero(temp: Double(lb_display.text!)!/100))
                //String(Double(lb_display.text)/100);
        }

    }
//    @IBAction func btnPhanTram(_ sender: Any) {
//            }
    @IBAction func Calculate(_ sender: UIButton) {
        // 11. = AC , 12 = Chia, 13 = Nhan , 14 = Tru, 15 = cong, 16 = , 17 = +/- , 18 = %
        //if(sender.tag ==)
        if sender.tag != 11 && sender.tag != 16 && lb_display.text != "" {
            
            //=====
            if sender.tag == 12 { //Chia
                //
                if afterequal == false {
                    if operation == 12 && performingMath == false{ //Chia
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forZero(temp: previousnumber/numberScreen))
                    }
                    else if operation == 13 && performingMath == false{ //Nhan
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forZero(temp: previousnumber*numberScreen))
                        
                    }
                    else if operation == 14 && performingMath == false{ //Tru
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forZero(temp: previousnumber-numberScreen))
                        
                    }
                    else if operation == 15 && performingMath == false{ //Cong
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forZero(temp: previousnumber+numberScreen))
                    }
                    else if operation == 18 && performingMath == false{ //%
                        numberScreen = 100
                        lb_display.text = String(forZero(temp: previousnumber/numberScreen))
                        NSLog("% :" + String(previousnumber/numberScreen))
                                            }
                }
                else {
                    afterequal = false
                }
                
                //
            }
                //======
            else if sender.tag == 13 { //Nhan
                //
                if afterequal == false {
                    if operation == 12 && performingMath == false{ //Chia
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forZero(temp: previousnumber/numberScreen))
                    }
                    else if operation == 13 && performingMath == false{ //Nhan
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forZero(temp: previousnumber*numberScreen))
                        
                    }
                    else if operation == 14 && performingMath == false{ //Tru
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forZero(temp: previousnumber-numberScreen))
                        
                    }
                    else if operation == 15 && performingMath == false{ //Cong
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forZero(temp: previousnumber+numberScreen))
                    }
                    else if operation == 18 && performingMath == false{ //%
                        numberScreen = 100
                        lb_display.text = String(forZero(temp: previousnumber/numberScreen))
                        NSLog("% :" + String(previousnumber/numberScreen))
                    }
                }
                else {
                    afterequal = false
                }
                
                //
            }
            //=======
            if sender.tag == 12 { //Chia
                //
                if afterequal == false {
                    if operation == 12 && performingMath == false{ //Chia
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forZero(temp: previousnumber/numberScreen))
                    }
                    else if operation == 13 && performingMath == false{ //Nhan
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forZero(temp: previousnumber*numberScreen))
                        
                    }
                    else if operation == 14 && performingMath == false{ //Tru
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forZero(temp: previousnumber-numberScreen))
                        
                    }
                    else if operation == 15 && performingMath == false{ //Cong
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forZero(temp: previousnumber+numberScreen))
                    }
                    else if operation == 18 && performingMath == false{ //%
                        numberScreen = 100
                        lb_display.text = String(forZero(temp: previousnumber/numberScreen))
                        NSLog("% :" + String(previousnumber/numberScreen))
                    }
                }
                else {
                    afterequal = false
                }
                
                //
            }
                //=====
            else if sender.tag == 18 {//%
                //
                lb_display.text = String(previousnumber/100);
                if afterequal == false {
                    if operation == 12 && performingMath == false{ //Chia
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forZero(temp: previousnumber/numberScreen))
                    }
                    else if operation == 13 && performingMath == false{ //Nhan
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forZero(temp: previousnumber*numberScreen))
                        
                    }
                    else if operation == 14 && performingMath == false{ //Tru
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forZero(temp: previousnumber-numberScreen))
                        
                    }
                    else if operation == 15 && performingMath == false{ //Cong
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forZero(temp: previousnumber+numberScreen))
                    }
                    else if operation == 18 && performingMath == false { //Cong
                        numberScreen = 100
                        lb_display.text = String(forZero(temp: previousnumber/numberScreen))
                        NSLog("% :" + String(previousnumber/numberScreen))
                    }
                }
                else {
                    afterequal = false
                }
                //
            }
            else if sender.tag == 15 { //Cong
                //
                if afterequal == false {
                    if operation == 12 && performingMath == false{ //Chia
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forZero(temp: previousnumber/numberScreen))
                    }
                    else if operation == 13 && performingMath == false{ //Nhan
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forZero(temp: previousnumber*numberScreen))
                        
                    }
                    else if operation == 14 && performingMath == false{ //Tru
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forZero(temp: previousnumber-numberScreen))
                        
                    }
                    else if operation == 15 && performingMath == false{ //Cong
                        numberScreen = Double(lb_display.text!)!
                        lb_display.text = String(forZero(temp: previousnumber+numberScreen))
                    }
                    
                    else if operation == 18 && performingMath == false{ //%
                        numberScreen = 100
                        lb_display.text = String(forZero(temp: previousnumber/numberScreen))
                        NSLog("% :" + String(previousnumber/numberScreen))
                    }
                }
                else {
                    afterequal = false
                }
                //
            }
            operation = sender.tag
            performingMath = true
        }
        else if sender.tag == 11 {
            lb_display.text = String(0)
            previousnumber = 0
            numberScreen = 0
            operation = 0
        }
        else if sender.tag == 16 {
            if operation == 12 && performingMath == false{ //Chia
                numberScreen = Double(lb_display.text!)!
                lb_display.text = String(forZero(temp: previousnumber/numberScreen))
                previousnumber = previousnumber/numberScreen
                afterequal = true
            }
            else if operation == 13 && performingMath == false{ //Nhan
                numberScreen = Double(lb_display.text!)!
                lb_display.text = String(forZero(temp: previousnumber*numberScreen))
                previousnumber = previousnumber*numberScreen
                afterequal = true
                
            }
            else if operation == 14 && performingMath == false{ //Tru
                numberScreen = Double(lb_display.text!)!
                lb_display.text = String(forZero(temp: previousnumber-numberScreen))
                previousnumber = previousnumber-numberScreen
                afterequal = true
                
            }
            else if operation == 15 && performingMath == false{ //Cong
                numberScreen = Double(lb_display.text!)!
                lb_display.text = String(forZero(temp: previousnumber+numberScreen))
                previousnumber = previousnumber+numberScreen
                afterequal = true
            }
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        lb_display.text = String(0)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

