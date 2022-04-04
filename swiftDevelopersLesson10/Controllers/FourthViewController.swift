//
//  FourthViewController.swift
//  swiftDevelopersLesson10
//
//  Created by Андрей Фокин on 3.04.22.
//

import UIKit

class FourthViewController: UIViewController {
    
    
    let label = UILabel()
    let imageView = UIImageView()
    let payButton = UIButton(type: .system)
    
    let labelOne = UILabel()
    let labelTwo = UILabel()
    let labelThree = UILabel()
    let labelFourth = UILabel()
    
    let switch1 = UISwitch()
    let switch2 = UISwitch()
    let switch3 = UISwitch()
    let switch4 = UISwitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabel()
        setupImageView()
        setUpPayButton()
        setupLabel1()
        setupLabel2()
        setupLabel3()
        setupLabel4()
        setupSwitch1()
        setupSwitch2()
        setupSwitch3()
        setupSwitch4()
    }
    
    
    // MARK: setup Label
    
    
    fileprivate func setupLabel() {
        
        label.frame = CGRect(x: 150, y: 100, width: 300, height: 50)
        label.textColor = .black
        view.addSubview(label)
    }
    
    // MARK: - setup image view
    
    fileprivate func setupImageView(){
        imageView.frame = CGRect(x: 8, y: 160, width: 400, height: 400)
        view.addSubview(imageView)
    }
    
    // MARK: - setup button
    
    fileprivate func setUpPayButton(){
        payButton.frame = CGRect(x: 110, y: 800, width: 200, height: 40)
        payButton.setTitle("Выбрать", for: .normal)
        payButton.backgroundColor = .orange
        payButton.tintColor = .white
        payButton.layer.cornerRadius = 6
        payButton.layer.borderWidth = 2
        payButton.layer.borderColor = UIColor.red.cgColor
        view.addSubview(payButton)
        payButton.addTarget(self, action: #selector(enterButtonTapped(sender:)), for: .touchUpInside)

    }
    
    //MARK: - setup label
    
    fileprivate func setupLabel1() {
        labelOne.frame = CGRect(x: 40, y: 600, width: 100, height: 35)
        labelOne.text = "Сыр мацарела"
        labelOne.sizeToFit()
        labelOne.textColor = .orange
        view.addSubview(labelOne)
    }
    
    fileprivate func setupLabel2() {
        labelTwo.frame = CGRect(x: 40, y: 650, width: 100, height: 35)
        labelTwo.text = "Ветчина"
        labelTwo.sizeToFit()
        labelTwo.textColor = .orange
        view.addSubview(labelTwo)
    }
    
    fileprivate func setupLabel3() {
        labelThree.frame = CGRect(x: 40, y: 700, width: 100, height: 35)
        labelThree.text = "Грибы"
        labelThree.sizeToFit()
        labelThree.textColor = .orange
        view.addSubview(labelThree)
    }
    
    fileprivate func setupLabel4() {
        labelFourth.frame = CGRect(x: 40, y: 750, width: 100, height: 35)
        labelFourth.text = "Маслины"
        labelFourth.sizeToFit()
        labelFourth.textColor = .orange
        view.addSubview(labelFourth)
    }
    
    // MARK: setup Switches
    
    fileprivate func setupSwitch1(){
        switch1.frame = CGRect(x: 320, y: 595, width: 50, height: 35)
        switch1.isOn = false
        switch1.onTintColor = .orange
        view.addSubview(switch1)
    }
    fileprivate func setupSwitch2(){
        switch2.frame = CGRect(x: 320, y: 645, width: 50, height: 35)
        switch2.isOn = false
        switch2.onTintColor = .orange
        view.addSubview(switch2)
    }
    fileprivate func setupSwitch3(){
        switch3.frame = CGRect(x: 320, y: 695, width: 50, height: 35)
        switch3.isOn = false
        switch3.onTintColor = .orange
        view.addSubview(switch3)
    }
    fileprivate func setupSwitch4(){
        switch4.frame = CGRect(x: 320, y: 745, width: 50, height: 35)
        switch4.isOn = false
        switch4.onTintColor = .orange
        view.addSubview(switch4)
    }
    
    //MARK: - func for selector
    
    @objc func enterButtonTapped(sender: UIButton){
        if sender == payButton{
            let fifthVC = FifthViewController()
            navigationController?.pushViewController(fifthVC, animated: false)
        }
    }
}
