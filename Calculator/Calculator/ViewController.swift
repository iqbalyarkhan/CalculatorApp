//
//  ViewController.swift
//  Calculator
//
//  Created by Iqbal Khan on 2/27/16.
//  Copyright © 2016 Iqbal Yar Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
 
    @IBOutlet weak var display: UILabel!
    
    //func for function declaration,
    //appendDigit is the name of the function,
    //sender is the name of the first argument 
    //and UIButton is the type of argument.
    //A return type would be specified by:
    // after UIBotton) -> Double
    @IBAction func appendDigit(sender: UIButton)
    {
        //Let means this is a constant
        //An '!' unwraps an optional that is returned
        //by .currentTitle. BUT if the unwrapped optional
        //had a return value of nil, program crashes
        let digit = sender.currentTitle!
        
        if digit ==  "Clear" {
            
            display.text = "0"
            
        }
        
        else{
        //need a ! after display.text 
        //because display.text is an optional
        //while digit is a string. Therefore,
        //need to unwrap display.text
            if (display.text! == "0"){
                display.text = digit
            }
            
            else{
                
                display.text = display.text! + digit
            }
                
        }
    }
}

