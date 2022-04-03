//
//  SecondViewController.swift
//  swiftDevelopersLesson10
//
//  Created by Андрей Фокин on 3.04.22.
//

import UIKit

class SecondViewController: UIViewController {

    let pizzaLabel = UILabel()
    let sushiLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Food"
        pizzaLabelSetup()
        sushiLabelSetup()

    }
    

   // MARK: - setUp labels
    
    fileprivate func pizzaLabelSetup(){
        pizzaLabel.frame = CGRect(x: 150, y: 200, width: 200, height: 50)
        pizzaLabel.textColor = .orange
        pizzaLabel.backgroundColor = .lightGray
        pizzaLabel.text = "Пицца"
        view.addSubview(pizzaLabel)
    }
    
    fileprivate func sushiLabelSetup(){
        sushiLabel.frame = CGRect(x: 150, y: 400, width: 200, height: 50)
        sushiLabel.textColor = .orange
        sushiLabel.backgroundColor = .lightGray
        sushiLabel.text = "Cуши"
        view.addSubview(sushiLabel)
    }
}
