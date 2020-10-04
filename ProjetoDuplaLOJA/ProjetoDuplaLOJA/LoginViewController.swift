//
//  LoginViewController.swift
//  ProjetoDuplaLOJA
//
//  Created by COTEMIG on 24/09/20.
//  Copyright © 2020 AndreHuberViniciusMartins. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userEmailTextFiled: UITextField!
    @IBOutlet weak var userSenhaTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginButton(_ sender: Any) {
        
        let userEmail = userEmailTextFiled.text;
        let userSenha =  userSenhaTextField.text;
        
        let userEmailStore = UserDefaults.standard.string(forKey: "userEmail1");
        let userSenhaStore = UserDefaults.standard.string(forKey: "userSenha1");
    
    
        if (userEmailStore == userEmail){
            if(userSenhaStore == userSenha){
                
                UserDefaults.standard.set(true, forKey: "UserLoggedIn");
                UserDefaults.standard.synchronize();
                self.dismiss(animated: true, completion: nil);
            }
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    }
}
