//
//  RatingControl.swift
//  Foodtracker
//
//  Created by Bijay Kumar Pun on 5/22/20.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit

@objcMembers class RatingControl: UIStackView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    
    */
    //MARK: properties
    private var ratingButtons = [UIButton](); //property with list of buttons
    var rating = 0; //controls' rating
    
    //MARK: initilalization
    
    override init(frame: CGRect) {
        super.init(frame: frame);
        setupButtons();
        
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder);
        setupButtons();
        
    }
    //MARK: private methods
    
    private func setupButtons(){
        for _ in 0..<5{ //half-open range operator(..<) doesn't include the upper number, so this goes from 0 to 4, the underscore _ is  a
            // wildcard, which can be used when we don't need to know which iterations of the loop is currently executing
            let button = UIButton();
            button.backgroundColor = UIColor.red;
            
            //Add constraints
            button.translatesAutoresizingMaskIntoConstraints = false; //disable automatically generated constraint
            button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true; // add a constraint to button's height anchor
            button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true; // add a constraint to button's width anchor
            
            //setup the button action
            
            button.addTarget(self, action:
                #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside);
            
            //finally add the view to the stack
            addArrangedSubview(button);
            
            //add the new button to the rating button array
            ratingButtons.append(button);
        
    }
    }
    
    //MARK: Button action
    func ratingButtonTapped(button: UIButton){
        print("button pressed ");
    }
    

}
