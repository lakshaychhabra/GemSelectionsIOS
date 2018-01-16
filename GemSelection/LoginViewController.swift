//
//  LoginViewController.swift
//  GemSelection
//
//  Created by Bimlesh Singh on 12/08/17.
//  Copyright © 2017 ITS. All rights reserved.
//

import UIKit
import Firebase
class LoginViewController: UIViewController {
    var ref: DatabaseReference!

    @IBOutlet var signInView: UIView!
    @IBOutlet weak var signUpView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        signupBtn.setTitleColor(UIColor.black, for: .normal)
        signInView.frame = CGRect(x: 16, y: 227, width: self.view.frame.size.width/1.09, height: self.view.frame.size.height/3.92)
        signupBtn.setTitleColor(UIColor.gray, for: .normal)
        signUpView.isHidden = true
        self.view.addSubview(signInView)
    }
   
  
     
    @IBOutlet weak var signinBtn: UIButton!
    @IBOutlet weak var signupBtn: UIButton!
    @IBAction func signInAction(_ sender: Any) {
        signinBtn.setTitleColor(UIColor.black, for: .normal)
        signupBtn.setTitleColor(UIColor.gray, for: .normal)
        signUpName.text = nil
        signUpEmail.text = nil
        signUpPassword.text = nil
        signUpView.isHidden = true
        self.view.addSubview(signInView)
    }
    @IBAction func signUpAction(_ sender: Any) {
        signupBtn.setTitleColor(UIColor.black, for: .normal)
        signinBtn.setTitleColor(UIColor.gray, for: .normal)
        signInEmail.text = nil
        signInPassword.text = nil
        signInView.removeFromSuperview()
        signUpView.isHidden = false

    }
    
    @IBOutlet weak var signUpName: UITextField!
    @IBOutlet weak var signUpEmail: UITextField!
    @IBOutlet weak var signUpPassword: UITextField!
    @IBOutlet weak var signUpPhone: UITextField!
    @IBOutlet weak var signInEmail: UITextField!
    @IBOutlet weak var signInPassword: UITextField!

@IBAction func signInUserBtn(_ sender: Any) {
            guard let email = signInEmail.text else {
                return
            };guard let password = signInPassword.text else {
                return
            }
            Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
                if error != nil {
                    print(error!.localizedDescription)}
                else{
                    print("\n\nsignin")
                    isloggedin = 1
                    self.performSegue(withIdentifier: "signinsuccess", sender: self)
                    
                }
            }
    
    }
    
@IBAction func signUpUserBtn(_ sender: Any) {
            guard let name = signUpName.text else {
                return
            };guard let email = signUpEmail.text else {
                return
            };guard let password = signUpPassword.text else {
                return
            };guard let phone = signUpPhone.text else {
                return
            }
            
           Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
            else{
                isloggedin = 1
                let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
                changeRequest?.displayName = name
                changeRequest?.commitChanges { (error) in
                    print("\n\nho gya change")
                }
                self.ref.child("users").child(user!.uid).child("contact").setValue(phone)
                self.ref.child("users").child(user!.uid).child("emil").setValue(email)
                self.ref.child("users").child(user!.uid).child("name").setValue(name)
                self.performSegue(withIdentifier: "signinsuccess", sender: self)
            }
            
    }}
  
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        signUpName.resignFirstResponder()
        signUpEmail.resignFirstResponder()
        signUpPassword.resignFirstResponder()
        signInEmail.resignFirstResponder()
        signInPassword.resignFirstResponder()
        signUpPhone.resignFirstResponder()
        
        
    }
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.portrait
    }
        
     override var shouldAutorotate: Bool {
            return false
        }
    }

class forgotViewController: UIViewController {
    override func viewDidLoad() {
        
    }
@IBAction func sendResetBtn(_ sender: Any) {
            guard let email = forgotEmailTF.text else {
                return
            }
            Auth.auth().sendPasswordReset(withEmail: email) { (Error) in
                if Error != nil{
                    print(Error!.localizedDescription)}
                else{
                    self.performSegue(withIdentifier: "signinsegue", sender: self)
                }
            }}
    
    
    
    @IBOutlet weak var forgotEmailTF: UITextField!

}


