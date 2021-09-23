//
//  Model.swift
//  CalculatorApp-ProgramaticUI
//
//  Created by Sandip Das on 22/09/21.
//

import UIKit

extension ViewController{
    
    func clearAll(){
        workings = ""
        displayLabel.text = "0"
    }
    
    
    @objc func addWorkings(sender: UIButton!) {
        
        if let btnTapped = sender.titleLabel?.text{
            if(btnTapped == "AC"){
                clearAll()
            }
            else if(btnTapped == "C"){
                //only removes last character if workings is not empty
                if(workings != ""){
                    workings.removeLast()
                    displayLabel.text = workings
                }else if(displayLabel.text != ""){
                    displayLabel.text?.removeLast()
                }
            }
            
            //takes into account if operators are retapped after initial "=" is pressed
            else if (btnTapped == "+"||btnTapped == "-"||btnTapped == "/"||btnTapped=="*"){
                
                //add the operator to displaylabel and workings
                workings = displayLabel.text! + btnTapped
                displayLabel.text! = workings
            }
            
            
            else if(btnTapped == "="){
                
                //replaces % in the expression so app doesnt crash
                let checkedWorkingsForPercent = workings.replacingOccurrences(of: "%", with: "*0.01")
                let expression = NSExpression(format: checkedWorkingsForPercent)
                let result = expression.expressionValue(with: nil, context: nil) as! NSNumber
                displayLabel.text = result.stringValue
                
                
                //clear workings so that next numbers dont get concatenated
                            
                workings=""
                
            }
            
            
            else{
                workings += (sender.titleLabel?.text)!
                displayLabel.text! = workings
            }
        }
        
    
        
    }
}
