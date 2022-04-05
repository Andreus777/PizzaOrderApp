//
//  FifthViewController.swift
//  swiftDevelopersLesson10
//
//  Created by Андрей Фокин on 3.04.22.
//

import UIKit

class FifthViewController: UIViewController {

    let button = UIButton(type: .system)
    let yourOrderLabel = UILabel()
    let pizzaLabel = UILabel()
    let labelForSwitch2 = UILabel()
    let labelForSwitch3 = UILabel()
    let labelForSwitch4 = UILabel()
    let labelForSwitch5 = UILabel()
    let payCardLabel = UILabel()
    let payCashLabel = UILabel()
    let switch1 = UISwitch()
    let switch2 = UISwitch()
    
    
    var pizzaName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Оплата"
        
        setupButton()
        setupYourOrderLabel()
        setupPizzaLabel()
        setupLabelForSwitch2()
        setupLabelForSwitch3()
        setupLabelForSwitch4()
        setupLabelForSwitch5()
        setupPayCardLabel()
        setupPayCashLabel()
        setupSwitch1()
        setupSwitch2()

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
    
    // MARK: - setup Labels
    
    fileprivate func setupYourOrderLabel(){
        yourOrderLabel.frame = CGRect(x: 50, y: 200, width: 200, height: 35)
        yourOrderLabel.text = "Ваш заказ:"
        yourOrderLabel.sizeToFit()
        yourOrderLabel.tintColor = .black
        view.addSubview(yourOrderLabel)
    }
    
    fileprivate func setupPizzaLabel(){
        pizzaLabel.frame = CGRect(x: 50, y: 300, width: 200, height: 35)
        pizzaLabel.text = "1. Пицца: \(pizzaName ?? "")"
        pizzaLabel.sizeToFit()
        pizzaLabel.tintColor = .black
        view.addSubview(pizzaLabel)
    }
    
    fileprivate func setupLabelForSwitch2(){
        labelForSwitch2.frame = CGRect(x: 50, y: 350, width: 200, height: 35)
        labelForSwitch2.sizeToFit()
        labelForSwitch2.tintColor = .black
        view.addSubview(labelForSwitch2)
    }
    
    fileprivate func setupLabelForSwitch3(){
        labelForSwitch3.frame = CGRect(x: 50, y: 400, width: 200, height: 35)
        labelForSwitch3.sizeToFit()
        labelForSwitch3.tintColor = .black
        view.addSubview(labelForSwitch3)
    }
    
    fileprivate func setupLabelForSwitch4(){
        labelForSwitch4.frame = CGRect(x: 50, y: 450, width: 200, height: 35)
        labelForSwitch4.sizeToFit()
        labelForSwitch4.tintColor = .black
        view.addSubview(labelForSwitch4)
    }
    
    fileprivate func setupLabelForSwitch5(){
        labelForSwitch5.frame = CGRect(x: 50, y: 500, width: 200, height: 35)
        labelForSwitch5.sizeToFit()
        labelForSwitch5.tintColor = .black
        view.addSubview(labelForSwitch5)
    }
    
    fileprivate func setupPayCardLabel(){
        payCardLabel.frame = CGRect(x: 50, y: 600, width: 200, height: 35)
        payCardLabel.text = "Оплата картой"
        payCardLabel.sizeToFit()
        payCardLabel.tintColor = .black
        view.addSubview(payCardLabel)
    }
    
    fileprivate func setupPayCashLabel(){
        payCashLabel.frame = CGRect(x: 50, y: 650, width: 200, height: 35)
        payCashLabel.text = "Оплата наличными"
        payCashLabel.sizeToFit()
        payCashLabel.tintColor = .black
        view.addSubview(payCashLabel)
    }
    
    fileprivate func setupSwitch1(){
        switch1.frame = CGRect(x: 320, y: 600, width: 50, height: 35)
        switch1.isOn = false
        switch1.onTintColor = .orange
        view.addSubview(switch1)
    }
    
    fileprivate func setupSwitch2(){
        switch2.frame = CGRect(x: 320, y: 650, width: 50, height: 35)
        switch2.isOn = false
        switch2.onTintColor = .orange
        view.addSubview(switch2)
    }
    
    //MARK: - func for selector
    
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

