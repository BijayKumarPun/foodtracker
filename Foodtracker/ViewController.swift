//
//  ViewController.swift
//  Foodtracker
//
//  Created by Bijay Kumar Pun on 5/20/20.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate, UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    //MARK: properties
    

    @IBOutlet weak var nameTextField: UITextField!
    
    //@IBOutlet atribute tells xocde that nameTextField property can be connected from the
    // interface builder, which is why the IB prefix
    //The weak keyword indicates that the reference does not prevent the system from deallocating the
    // referenced object
    // Rest define as : implicitly unwrapped optional variable of type UITextField named nameTextField
    

    @IBOutlet weak var mealNameLabel: UILabel!
    
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view.
        //When the ViewController instance is loaded, it sets itself as the delegate of its nameTextField property
        nameTextField.delegate = self;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
        
        //method stub
    }
    //MARK: UITExtFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hide the keyboard
        textField.resignFirstResponder();
        return true;
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text;
    }
    
    
    //MARK: Actions
    
    @IBAction func setDefaultTextLabel(_ sender: UIButton) {
        // The sender parameter refers to the object responsible for triggering the action
        //IBAction attribute indicates that the method is an action connected from the storyboard
        // interface builder
        // Rest declares method by the name of setDefaultLabelText(_:)
        nameTextField.text = "Default Text";
    }
        
   
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        
        //Hide the keyboard
        nameTextField.resignFirstResponder();
        
        //UIImagePickerController is a view controller that lets a user
        // pick image from their photo library
        let imagePickerController = UIImagePickerController();
        
        
    //Only allow photos to be picked, not taken
        imagePickerController.sourceType = .photoLibrary;
        
        //Make sure ViewController is notified when the user picks an image
        imagePickerController.delegate = self;
        
        present(imagePickerController,animated: true,completion: nil);
        
    }
    
    //MARK: UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        //dismiss the picker if the user cancelled
        dismiss(animated: true, completion: nil);
    }
    

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        // The info dictionary may contain multiple representations of the image. You want to use the original
        
        guard let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else{
            fatalError("Expected a dictionary containing an image, but was provided the following:\(info)");
        }
        photoImageView.image = selectedImage;
        //Dismiss hte picker
        dismiss(animated: true, completion: nil);
     }
    
    

}


