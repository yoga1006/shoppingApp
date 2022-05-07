//
//  ViewController.swift
//  shoppingApp
//
//  Created by Yoga on 2022/5/6.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bagQtyTextField: UITextField!
    @IBOutlet weak var braceletQtyTextField: UITextField!
    @IBOutlet weak var cosmeticsQtyTextField: UITextField!
    @IBOutlet weak var earingsQtyTextField: UITextField!
    @IBOutlet weak var walletQtyTextField: UITextField!
    @IBOutlet weak var perfumeQtyTextField: UITextField!
    
    @IBOutlet weak var bagStepper: UIStepper!
    @IBOutlet weak var braceletStepper: UIStepper!
    @IBOutlet weak var cosmeticsStepper: UIStepper!
    @IBOutlet weak var earingsStepper: UIStepper!
    @IBOutlet weak var walletStepper: UIStepper!
    @IBOutlet weak var perfumeStepper: UIStepper!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    var itemBag:Int = 0
    var itemBracelet:Int = 0
    var itemCosmetics:Int = 0
    var itemEarings:Int = 0
    var itemWallet:Int = 0
    var itemPerfume:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    
    
    @IBAction func changeQty(_ sender: UIStepper) {
        
        //取得stepper的值
        itemBag=Int(bagStepper.value)
        itemBracelet=Int(braceletStepper.value)
        itemCosmetics=Int(cosmeticsStepper.value)
        itemEarings=Int(earingsStepper.value)
        itemWallet=Int(walletStepper.value)
        itemPerfume=Int(perfumeStepper.value)
        
        //傳入QtyTextField中
        bagQtyTextField.text=String(itemBag)
        braceletQtyTextField.text=String(itemBracelet)
        cosmeticsQtyTextField.text=String(itemCosmetics)
        earingsQtyTextField.text=String(itemEarings)
        walletQtyTextField.text=String(itemWallet)
        perfumeQtyTextField.text=String(itemPerfume)
        
        //呼叫計算總和的function
        calculate()
        
    }
    
    
    
    func calculate(){
        
        let totalprice = 7350*itemBag+1290*itemBracelet+2700*itemCosmetics+6500*itemEarings+9150*itemWallet+1800*itemPerfume

        totalLabel.text=String(totalprice)
        
    }
    
    
    @IBAction func cleanAll(_ sender: UIButton) {
        
        bagStepper.value=0
        braceletStepper.value=0
        cosmeticsStepper.value=0
        earingsStepper.value=0
        walletStepper.value=0
        perfumeStepper.value=0
        bagQtyTextField.text="0"
        braceletQtyTextField.text="0"
        cosmeticsQtyTextField.text="0"
        earingsQtyTextField.text="0"
        walletQtyTextField.text="0"
        perfumeQtyTextField.text="0"
        totalLabel.text="0"
        
    }
    

}

