//
//  RegisterPageViewController.swift
//  ProjetoDuplaLOJA
//
//  Created by COTEMIG on 23/09/20.
//  Copyright © 2020 AndreHuberViniciusMartins. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {

    @IBOutlet weak var UserRepeteSenha: UITextField!
    @IBOutlet weak var userSenha: UITextField!
    @IBOutlet weak var userEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func registerbutton(_ sender: Any) {
        
        let userEmail1 = userEmail.text;
        let userSenha1 = userSenha.text;
        let UserRepeteSenha1 = UserRepeteSenha.text;
     
        
        if(userEmail1!.isEmpty || userSenha1!.isEmpty || UserRepeteSenha1!.isEmpty){
                        displayMyAlertMessage(userMessage: "Todos os campos sao necessarios!!!!!");
            return;
        }
        
        if(userSenha1 != UserRepeteSenha1){
            displayMyAlertMessage(userMessage: "As senhas nao estao iguais!!!");

            return;
        }
        
        UserDefaults.standard.set(userEmail1, forKey: "userEmail1");
        UserDefaults.standard.set(userSenha1, forKey: "userSenha1");
        UserDefaults.standard.synchronize();
        
        
        let myAlert = UIAlertController(title: "Alert", message: "Cadastro feito com sucesso", preferredStyle: UIAlertController.Style.alert);
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default){ action in
            self.dismiss(animated: true, completion:nil);
            
        }
        myAlert.addAction(okAction);
        self.present(myAlert, animated: true, completion: nil);
        
    }
    
    func displayMyAlertMessage(userMessage: String){
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertController.Style.alert);
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:nil);
        
        myAlert.addAction(okAction);
        self.present(myAlert, animated: true, completion:nil );
        
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
