//
//  FifthViewController.swift
//  swiftDevelopersLesson10
//
//  Created by Андрей Фокин on 3.04.22.
//

import UIKit

class FifthViewController: UIViewController {

    let button = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Оплата"
        
        setupButton()

    }
    
    // MARK: - setup button
    
    fileprivate func setupButton(){
        button.frame = CGRect(x: 60, y: 800, width: 300, height: 40)
        button.setTitle("Оплата", for: .normal)
        button.backgroundColor = .black
        button.tintColor = .white
        button.layer.cornerRadius = 6
        button.layer.borderWidth = 2
        view.addSubview(button)
        button.addTarget(self, action: #selector(buttonTapped(sender:)), for: .touchUpInside)
    }
    
    
    @objc func buttonTapped(sender: UIButton){
        if sender == button {
            let alert = UIAlertController(title: "Заказ оплачен!", message: "Ваш заказ доставят в течение 15 минут. Приятного аппетита!", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .cancel) { [weak self] action in
                self?.navigationController?.popToRootViewController(animated: true)
            }
                alert.addAction(action)
                present(alert, animated: true)
            }
        }
    }

