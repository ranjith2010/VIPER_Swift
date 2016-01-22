//
//  VSSignupViewController.swift
//  VIPER_Swift
//
//  Created by ranjith on 20/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import UIKit

class VSSignupViewController: UIViewController,VSSignupViewProtocol {
    
    var logic :VSSignupLogic?
    var navigation :VSSignupNavigation?
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var signupButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Button Actions
    @IBAction func didTapSignupButton(sender: AnyObject) {
        // save user details in CoreData.
        var inputDictionary = [String:AnyObject]()
        inputDictionary["email"] = self.emailTextField.text
        inputDictionary["password"] = self.passwordTextField.text
        let userModel = VSUserModel(inputDictionary: inputDictionary)
        self.logic?.createUser(userModel)
    }
    
    @IBAction func didTapDismissButton(sender: AnyObject) {
        self.navigation!.dismissSignupViewController()
    }
    
    func userCreationIntimation(isSaved :Bool) {
        if isSaved {
            print("Succes:User Created")
            self.navigation!.presentHomeScreen()
        }
        else {
            print("Failure:User did not store")
        }
    }

}
