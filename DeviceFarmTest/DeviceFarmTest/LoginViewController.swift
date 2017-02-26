//
//  LoginViewController.swift
//  DeviceFarmTest
//
//  Created by Abhishek Mishra on 26/02/2017.
//  Copyright © 2017 ASM Technology Ltd. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onLogin(_ sender: Any) {
        
        userNameTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        
        let userName = userNameTextField.text!
        let password = passwordTextField.text!
        
        if (userName.compare("amishra") == .orderedSame) &&
            (password.compare("1234") == .orderedSame) {
            self.performSegue(withIdentifier: "loginSegue", sender: self)
        } else {
            let alertController = UIAlertController(title: "Error", message: "Invalud username/password.", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Try again.", style: .cancel, handler:nil))
            
            self.present(alertController, animated: true, completion:nil)
        }
    }

    @IBAction func userNameDidEndOnExit(_ sender: Any) {
        userNameTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
    
    @IBAction func passwordDidEndOnExit(_ sender: Any) {
        userNameTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? GreetingViewController {
            let userName = userNameTextField.text!
            viewController.welcomeMessage = "Welcome \(userName)"
        }
    }

}
