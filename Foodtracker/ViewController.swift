//
//  ViewController.swift
//  Foodtracker
//
//  Created by Bijay Kumar Pun on 5/20/20.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: properties
    

    @IBOutlet weak var nameTextField: UITextField!
    
    //@IBOutlet atribute tells xocde that nameTextField property can be connected from the
    // interface builder, which is why the IB prefix
    //The weak keyword indicates that the reference does not prevent the system from deallocating the
    // referenced object
    // Rest define as : implicitly unwrapped optional variable of type UITextField named nameTextField
    

    @IBOutlet weak var mealNameLabel: UILabel!
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
        
        //method stub
    }
    
    //MARK: Actions
    
    @IBAction func setDefaultTextLabel(_ sender: UIButton) {
        // The sender parameter refers to the object responsible for triggering the action
        //IBAction attribute indicates that the method is an action connected from the storyboard
        // interface builder
        // Rest declares method by the name of setDefaultLabelText(_:)
        nameTextField.text = "Default Text";
    }
        
   
        
    
    

}


