//
//  ViewController.swift
//  Calculator
//
//  Created by Hasan Uysal on 27.08.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var resultText: UILabel!
    let myDate = UILabel()
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let myLabel = UILabel()
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        myLabel.text = "Created by Hasan Uysal"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width * 0.5 - width * 0.8 / 2, y: height * 0.8 - 50, width: width * 0.8, height: 50)
        myLabel.textColor = UIColor.red
        view.addSubview(myLabel)
        
        
       
        myDate.text = "2022"
        myDate.textColor = UIColor.blue
        myDate.textAlignment = .center
        myDate.frame = CGRect(x: width * 0.5 - width * 0.825 / 2, y: height * 0.825 - 50, width: width * 0.8, height: 100)
        view.addSubview(myDate)
        
        let myButton = UIButton()
        
        myButton.setTitle("Tam Tarih Göster", for: .normal)
        myButton.backgroundColor = UIColor.red
        myButton.setTitleColor(UIColor.white, for: .normal)
        myButton.frame = CGRect(x: width * 0.5 - width * 0.7 / 2,y: height * 0.925 - 50, width: width * 0.7, height: 50)
        view.addSubview(myButton)
        
        myButton.addTarget(self, action:#selector(clickedmyButton) , for: .touchUpInside)
        
    }
 
    @IBAction func buttonAdd(_ sender: Any) {
        
        if let firstNum = Int(firstText.text!){
            if let secondNum = Int(secondText.text!){
                
                result = firstNum + secondNum
                resultText.text = "Sonuç = " + String(result)
                
            }
        }
    }
    

    @IBAction func buttonSub(_ sender: Any) {
        
        if let firstNum = Int(firstText.text!){
            if let secondNum = Int(secondText.text!){
                
                result = firstNum - secondNum
                resultText.text = "Sonuç = " + String(result)
                
            }
        }
        
        
    }
    
    @IBAction func buttonMultiply(_ sender: Any) {
        if let firstNum = Int(firstText.text!){
            if let secondNum = Int(secondText.text!){
                
                result = firstNum * secondNum
                resultText.text = "Sonuç = " + String(result)
                
            }
        }
    }
    
    
    @IBAction func buttonDivide(_ sender: Any) {
        
        if let firstNum = Int(firstText.text!){
            if let secondNum = Int(secondText.text!){
                
                result = firstNum / secondNum
                resultText.text = "Sonuç = " + String(result)
                
            }
        }
    }
    
    // @objc func clickedmyButton ()
    @IBAction func clickedmyButton (_ sender: Any){
        
        myDate.text = "27 Ağustos 2022"
        
    }
    
    
}

