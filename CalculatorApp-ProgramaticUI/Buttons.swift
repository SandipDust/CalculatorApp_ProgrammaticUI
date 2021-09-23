//
//  Buttons.swift
//  CalculatorApp-ProgramaticUI
//
//  Created by Sandip Das on 22/09/21.
//

import UIKit

class DisplayButton: UIButton{
    override init(frame: CGRect){
        super.init(frame:frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    
    func setupButton(bgColor:UIColor = .systemBlue){
        setTitleColor(.white, for: .normal)
        
        backgroundColor = bgColor
        titleLabel?.font = UIFont.systemFont(ofSize: 26)
        
    }
}


extension ViewController{
    
    

    func configureOuterStackView(){
        view.addSubview(outerStackView)
        outerStackView.axis = .vertical
        outerStackView.distribution = .fillEqually
        outerStackView.spacing = 1
        outerStackView.translatesAutoresizingMaskIntoConstraints = false
        
        
        //configuring display label
        displayLabel.textColor = .white
        displayLabel.textAlignment = .right
        displayLabel.font = UIFont.systemFont(ofSize: 40)
        displayLabel.numberOfLines = 0
        displayLabel.adjustsFontSizeToFitWidth = true
        displayLabel.backgroundColor = .red
        
        
        
        outerStackView.addArrangedSubview(displayLabel)
        configureStackViewRow1()
        configureStackViewRow2()
        configureStackViewRow3()
        configureStackViewRow4()
        configureStackViewRow5()
        
    }
    
    
    func configureStackViewRow1(){
        outerStackView.addArrangedSubview(stackViewRow1)
        stackViewRow1.distribution = .fillEqually
        stackViewRow1.spacing = 1
        stackViewRow1.translatesAutoresizingMaskIntoConstraints = false

       
        let buttonStack1 = ["AC","C","%","/"]
        for x in 0..<4{
            let button = DisplayButton()
            button.setTitle(buttonStack1[x], for: .normal)
            button.setupButton(bgColor: .darkGray)
            if(x==3){
                button.setupButton(bgColor: .systemOrange)
            }
            button.addTarget(self, action: #selector(addWorkings), for: .touchUpInside)
            stackViewRow1.addArrangedSubview(button)
            
        }
     
    }
    
    
    func configureStackViewRow2(){
        outerStackView.addArrangedSubview(stackViewRow2)
        stackViewRow2.distribution = .fillEqually
        stackViewRow2.spacing = 1
        stackViewRow2.translatesAutoresizingMaskIntoConstraints = false
        
        let buttonStack2 = ["7","8","9","*"]
        for x in 0..<4{
            let button = DisplayButton()
            button.setTitle(buttonStack2[x], for: .normal)
            button.addTarget(self, action: #selector(addWorkings), for: .touchUpInside)
            if(x==3){
                button.setupButton(bgColor: .systemOrange)
            }
            stackViewRow2.addArrangedSubview(button)
            
        }
        
    }
    
   
    

    func configureStackViewRow3(){
        outerStackView.addArrangedSubview(stackViewRow3)
        stackViewRow3.distribution = .fillEqually
        stackViewRow3.spacing = 1
        stackViewRow3.translatesAutoresizingMaskIntoConstraints = false
        
        
        let buttonStack3 = ["4","5","6","-"]
        for x in 0..<4{
            let button = DisplayButton()
            button.setTitle(buttonStack3[x], for: .normal)
            button.addTarget(self, action: #selector(addWorkings), for: .touchUpInside)
            if(x==3){
                button.setupButton(bgColor: .systemOrange)
            }
            stackViewRow3.addArrangedSubview(button)
        }
    
    }
    func configureStackViewRow4(){
        outerStackView.addArrangedSubview(stackViewRow4)
        stackViewRow4.distribution = .fillEqually
        stackViewRow4.spacing = 1
        stackViewRow4.translatesAutoresizingMaskIntoConstraints = false
   
        let buttonStack4 = ["1","2","3","+"]
        for x in 0..<4{
            let button = DisplayButton()
            button.setTitle(buttonStack4[x], for: .normal)
            button.addTarget(self, action: #selector(addWorkings), for: .touchUpInside)
            if(x==3){
                button.setupButton(bgColor: .systemOrange)
            }
            stackViewRow4.addArrangedSubview(button)
        }

    
    }
    func configureStackViewRow5(){
        outerStackView.addArrangedSubview(stackViewRow5)
        stackViewRow5.distribution = .fillEqually
        stackViewRow5.spacing = 1
        stackViewRow5.translatesAutoresizingMaskIntoConstraints = false
        
        //creating button0 seperately to give room for two cells
        let button0 = DisplayButton()
        button0.setTitle("0", for: .normal)
        button0.addTarget(self, action: #selector(addWorkings), for: .touchUpInside)
        stackViewRow5.addArrangedSubview(button0)
        
        
        //add the rest two buttons in a subview
        configureStackViewRow5SubView()
    }
    
    func configureStackViewRow5SubView(){
        stackViewRow5.addArrangedSubview(stackViewRow5SubView)
        stackViewRow5SubView.distribution = .fillEqually
        stackViewRow5SubView.spacing = 1
        stackViewRow5SubView.translatesAutoresizingMaskIntoConstraints = false
        
        
        let buttonStack5 = [".","="]
        for x in 0..<2{
            let button = DisplayButton()
            button.setTitle(buttonStack5[x], for: .normal)
            button.addTarget(self, action: #selector(addWorkings), for: .touchUpInside)
            if(x==1){
                button.setupButton(bgColor: .systemOrange)
            }
            stackViewRow5SubView.addArrangedSubview(button)
        }
    }
    
    
    func addConstraints(){
        var constraint = [NSLayoutConstraint]()
        
        //add Constraints
        constraint.append(outerStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12))
        constraint.append(outerStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 5))
        constraint.append(outerStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -5))
        constraint.append(outerStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -12))
        
        
        //Activate constraints
        NSLayoutConstraint.activate(constraint)
    }
    



}
