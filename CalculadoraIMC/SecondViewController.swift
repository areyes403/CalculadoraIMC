//
//  SecondViewController.swift
//  CalculadoraIMC
//
//  Created by mac17 on 01/03/22.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var imgAlerta: UIImageView!
    @IBOutlet weak var lblAlerta: UILabel!
    
    @IBOutlet weak var lblValorIMC: UILabel!
    
    var valorIMC:String?
    var mensaje:String?
    var color:UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(valorIMC ?? "")
        print(mensaje ?? "")
        lblValorIMC.text = valorIMC
        lblAlerta.text = mensaje
        self.view.backgroundColor = color

        
    }
    

    

}
