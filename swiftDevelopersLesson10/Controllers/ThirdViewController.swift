//
//  ThirdViewController.swift
//  swiftDevelopersLesson10
//
//  Created by Андрей Фокин on 3.04.22.
//

import UIKit

class ThirdViewController: UIViewController {
    
    let imageViewFirst = UIImageView()
    let imageViewSecond = UIImageView()
    
    let labelOne = UILabel()
    let labelTwo = UILabel()
    
    let buttonOne = UIButton(type: .system)
    let buttonTwo = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Pizza"
        setupImageView()
        setupImageView2()
        setupLabelOne()
        setupLabelTwo()
        setupButton()
        setupButton2()
    }
    
    
    // MARK: - setUp imageView

    fileprivate func setupImageView(){
        
        imageViewFirst.frame = CGRect(x: 20, y: 120, width: 150, height: 150)
        imageViewFirst.image = UIImage(named: "pizzaBig")
        view.addSubview(imageViewFirst)
        
    }
    
    fileprivate func setupImageView2(){
        
        imageViewSecond.frame = CGRect(x: 20, y: 290, width: 150, height: 150)
        imageViewSecond.image = UIImage(named: "pizzaBig2")
        view.addSubview(imageViewSecond)
    }

    //MARK: setup labels
    
    fileprivate func setupLabelOne(){
        
        labelOne.frame = CGRect(x: 200, y: 170, width: 200, height: 35)
        labelOne.text = "Маргарита"
        labelOne.textColor = .black
        labelOne.font = UIFont(name: "System", size: 22.0)
        view.addSubview(labelOne)
    }
    
    fileprivate func setupLabelTwo(){
        
        labelTwo.frame = CGRect(x: 200, y: 340, width: 200, height: 35)
        labelTwo.text = "Моцарела"
        labelTwo.textColor = .black
        view.addSubview(labelTwo)
    }
    
    //MARK: Setup Buttons
    
    fileprivate func setupButton(){
        buttonOne.frame = CGRect(x: 320, y: 170, width: 40, height: 40)
        buttonOne.setTitle("+", for: .normal)
        buttonOne.tintColor = .white
        buttonOne.backgroundColor = .orange
        buttonOne.layer.borderWidth = 2
        buttonOne.layer.cornerRadius = 4
        buttonOne.layer.borderColor = UIColor.red.cgColor
        view.addSubview(buttonOne)
        buttonOne.addTarget(self, action: #selector(buttonOTapped(sender:)), for: .touchUpInside)
    }
    
    fileprivate func setupButton2(){
        buttonTwo.frame = CGRect(x: 320, y: 340, width: 40, height: 40)
        buttonTwo.setTitle("+", for: .normal)
        buttonTwo.tintColor = .white
        buttonTwo.backgroundColor = .orange
        buttonTwo.layer.borderWidth = 2
        buttonTwo.layer.cornerRadius = 4
        buttonTwo.layer.borderColor = UIColor.red.cgColor
        view.addSubview(buttonTwo)
        buttonTwo.addTarget(self, action: #selector(buttonOTapped(sender:)), for: .touchUpInside)
    }
    
    
    // MARK: - function for selectors
    
    @objc func buttonOTapped(sender: UIButton){
        switch sender {
        
        case buttonOne:
            let fourthVC = FourthViewController()
            fourthVC.label.text = labelOne.text
            fourthVC.imageView.image = imageViewFirst.image
            navigationController?.pushViewController(fourthVC, animated: false)
        
        case buttonTwo:
            let fourthVC = FourthViewController()
            fourthVC.label.text = labelTwo.text
            fourthVC.imageView.image = imageViewSecond.image
            navigationController?.pushViewController(fourthVC, animated: false)
        default:
            break
        }
    }
}
