//
//  ViewController.swift
//  CalculatorApp-ProgramaticUI
//
//  Created by Sandip Das on 22/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    var outerStackView = UIStackView()
    var displayLabel = UILabel()
    var stackViewRow1 = UIStackView()
    var stackViewRow2 = UIStackView()
    var stackViewRow3 = UIStackView()
    var stackViewRow4 = UIStackView()
    var stackViewRow5 = UIStackView()
    var stackViewRow5SubView = UIStackView()
    var workings: String = ""
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        configureOuterStackView()
        addConstraints()
        clearAll()
    }
    
    


    

}




