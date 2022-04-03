//
//  FirstViewController.swift
//  swiftDevelopersLesson10
//
//  Created by Андрей Фокин on 3.04.22.
//

import UIKit

class FirstViewController: UIViewController {
    
    let button = UIButton(type: .system)
    let emailLabel = UILabel()
    let passwordLabel = UILabel()
    let phoneTextField = UITextField()
    let passwordTaxtField = UITextField()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setPizzaImageToNavigationItem()
        setUpEnterButton()
        setupEmailLable()
        setupPasswordLable()
        setupPhoneTextField()
        setupPasswordTextField()
        
    }
    
    
    
    
    //MARK: - setup functions
    
    fileprivate func setPizzaImageToNavigationItem() {
        // create a container
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        imageView.contentMode = .scaleAspectFit
        // create image
        
        let image = UIImage(named: "pizza")
        
        // insert image into container
        imageView.image = image
        
        navigationItem.titleView = imageView
    }
    
    fileprivate func setUpEnterButton(){
        button.frame = CGRect(x: 120, y: 750, width: 200, height: 40)
        button.setTitle("Войти", for: .normal)
        button.backgroundColor = .orange
        button.tintColor = .white
        button.layer.cornerRadius = 6
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.red.cgColor
        view.addSubview(button)
        button.addTarget(self, action: #selector(enterButtonTapped(sender:)), for: .touchUpInside)
    }
    
    fileprivate func setupEmailLable(){
        emailLabel.frame = CGRect(x: 60, y: 300, width: 50, height: 35)
        emailLabel.text = "Phone"
        emailLabel.textColor = .orange
        view.addSubview(emailLabel)
    }
    
    fileprivate func setupPasswordLable(){
        passwordLabel.frame = CGRect(x: 60, y: 450, width: 100, height: 35)
        passwordLabel.text = "Password"
        passwordLabel.textColor = .orange
        view.addSubview(passwordLabel)
    }
    
    fileprivate func setupPhoneTextField(){
        phoneTextField.frame = CGRect(x: 60, y: 340, width: 300, height: 40)
        phoneTextField.placeholder = "Enter Phone"
        phoneTextField.textColor = .black
        phoneTextField.borderStyle = .roundedRect
        phoneTextField.enablesReturnKeyAutomatically = true
        phoneTextField.keyboardType = .numberPad
        phoneTextField.delegate = self
        view.addSubview(phoneTextField)
    }
    
    fileprivate func setupPasswordTextField(){
        passwordTaxtField.frame = CGRect(x: 60, y: 490, width: 300, height: 40)
        passwordTaxtField.placeholder = "Enter password"
        passwordTaxtField.textColor = .black
        passwordTaxtField.borderStyle = .roundedRect
        passwordTaxtField.enablesReturnKeyAutomatically = true
        passwordTaxtField.delegate = self
        passwordTaxtField.isSecureTextEntry = true
        view.addSubview(passwordTaxtField)
    }
    
//MARK: - Target for Button
    
    @objc func enterButtonTapped(sender: UIButton){
        if sender == button {
           let secondVC = SecondViewController()
            navigationController?.pushViewController(secondVC, animated: false)
           
        }
    }
    
}
//MARK: - Delegate

extension UIViewController: UITextFieldDelegate {
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
