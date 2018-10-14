   //
//  ViewController.swift
//  Resident's Connect V1
//
//  Created by Brandon A Wash on 9/22/18.
//  Copyright © 2018 Connect4Life Test 1. All rights reserved.
//

import UIKit
   
   class HomeViewController: UIViewController {
    
    @IBAction func connectTappedButton(_ sender: Any) {
    }
    
    
    
    @IBOutlet var userEmailTextField: UITextField!
    @IBOutlet var userPasswordTextField: UITextField!
    @IBOutlet var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func registerButtonTapped(sender: AnyObject) {
        
        _ = userEmailTextField.text;
        _ = userPasswordTextField.text;
        _ = confirmPasswordTextField;
        
        func displayMyAlertMessage(userMessage:String){
            
            let myAlert = UIAlertController(title:"Alert", message: userMessage, preferredStyle: UIAlertController.Style.alert);
            
            let okAction = UIAlertAction(title:"OK", style:UIAlertAction.Style.default, handler:nil);
            myAlert.addAction(okAction);
            
            self.present(myAlert, animated:true, completion:nil);
        }
        
        if(userEmailTextField.text=="" || userPasswordTextField.text=="" ||
            confirmPasswordTextField.text=="")
        
        {
            displayMyAlertMessage(userMessage: "All fields are required")
    return;
    }
   
        if( userPasswordTextField != confirmPasswordTextField){
   
            displayMyAlertMessage(userMessage: "Passwords do not Match");
   return; 
        }
        
        func viewDidAppear(_ animated:Bool) {
        self.performSegue(withIdentifier: "loginView",sender: self);
    }
   

   
 
   }
}
