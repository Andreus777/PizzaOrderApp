//
//  SecondViewController.swift
//  swiftDevelopersLesson10
//
//  Created by Андрей Фокин on 3.04.22.
//

import UIKit

class SecondViewController: UIViewController {
    
    let pizzaButton = UIButton(type: .system)
    let sushiButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Food"
        pizzaButtonSetup()
        sushiButtonSetup()
        
    }
    
    
    // MARK: - setUp labels
    
    fileprivate func pizzaButtonSetup(){
        
        pizzaButton.frame = CGRect(x: 7, y: 100, width: 400, height: 100)
        pizzaButton.setTitle("Пицца", for: .normal)
        pizzaButton.tintColor = .white
        pizzaButton.backgroundColor = .orange
        pizzaButton.setTitleShadowColor(.gray, for: .normal)
        pizzaButton.layer.borderWidth = 3
        pizzaButton.layer.borderColor = UIColor.lightGray.cgColor
        pizzaButton.layer.cornerRadius = 5
        view.addSubview(pizzaButton)
        pizzaButton.addTarget(self, action: #selector(pizzaButtonTapped(sender:)), for: .touchUpInside)
    }
    
    fileprivate func sushiButtonSetup(){
        
        sushiButton.frame = CGRect(x: 7, y: 215, width: 400, height: 100)
        sushiButton.setTitle("Cуши", for: .normal)
        sushiButton.tintColor = .white
        sushiButton.backgroundColor = .orange
        sushiButton.layer.borderWidth = 3
        sushiButton.layer.borderColor = UIColor.lightGray.cgColor
        sushiButton.layer.cornerRadius = 5
        view.addSubview(sushiButton)
    }
    
    //MARK: addTarget function
    
    @objc func pizzaButtonTapped(sender: UIButton){
        if sender == pizzaButton {
            let thirdVC = ThirdViewController()
            navigationController?.pushViewController(thirdVC, animated: false)
            
        }
    }
}
