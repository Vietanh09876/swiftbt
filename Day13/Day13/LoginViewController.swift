//
//  LonginViewController.swift
//  Day13
//
//  Created by Ngô Minh Tuấn on 20/06/2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var numberLable: UILabel!
    @IBOutlet weak var hotLineLable: UILabel!
    @IBOutlet weak var phoneLable: UILabel!
    @IBOutlet weak var passwordLable: UILabel!
    @IBOutlet weak var errorLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00)
        myImage.image = UIImage(named: "logoVinhome")
        phoneTextField.keyboardType = .phonePad
        phoneTextField.borderStyle = .roundedRect
        phoneTextField.font = UIFont.systemFont(ofSize: 20)
        phoneTextField.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00)
        passwordTextField.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00)
        passwordTextField.isSecureTextEntry = true
        passwordTextField.font = UIFont.systemFont(ofSize: 20)
        phoneTextField.bounds.size.height = 50
        passwordTextField.bounds.size.height = 50

        phoneLable.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00)
        passwordLable.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00)
        errorLable.text = ""
        registerButton.setTitle("Đăng Ký", for: .normal)
        registerButton.setTitleColor(UIColor.black, for: .normal)
        registerButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        registerButton.layer.cornerRadius = 5
        
        loginButton.setTitle("Đăng Nhập", for: .normal)
        loginButton.setTitleColor(UIColor.white, for: .normal)
        loginButton.backgroundColor = UIColor(red: 0.25, green: 0.58, blue: 0.53, alpha: 1.00)
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        loginButton.layer.cornerRadius = 5
        
        
        hotLineLable.text = "HotLine: "
        hotLineLable.textColor = UIColor.black
        
        numberLable.text = "1800.1186"
        numberLable.textColor = UIColor(red: 0.25, green: 0.58, blue: 0.53, alpha: 1.00)
    }

    @IBAction func goToRegister(_ sender: Any) {
        let registerVC = RegisterViewController()
        registerVC.modalPresentationStyle = .fullScreen
        self.present(registerVC, animated: true, completion: nil)
    }

    @IBAction func goToLogin(_ sender: Any) {
        guard let phone = phoneTextField.text, let password = passwordTextField.text  else {
            return
        }
        if phone == "" || password == "" {
            errorLable.text = "Vui lòng nhập đủ thông tin"
        } else {
            let infoVC = InfoViewController()
            infoVC.modalPresentationStyle = .fullScreen
            self.present(infoVC, animated: true, completion: nil)
        }
    }
}
