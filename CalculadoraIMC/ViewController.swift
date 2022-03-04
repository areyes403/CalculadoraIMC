//
//  ViewController.swift
//  CalculadoraIMC
//
//  Created by mac17 on 01/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblPeso: UILabel!
    @IBOutlet weak var lblAltura: UILabel!
    var cerebroCalculadora = CerebroCalculadora()
    var peso:Double = 75.0
    var altura:Double = 1.6
    var imc:Double = 0.0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func slPeso(_ sender: UISlider) {
        lblPeso.text="\(String(format: "%.2f", sender.value)) kg"
        peso = Double(sender.value)
        
    }
    /*
    
    @IBAction func slAltura(_ sender: Any) {
        lblAltura.text="\(String(format: "%.2f", (sender as AnyObject).value)) cm"
        
    }
 */
    
    @IBAction func slAltura(_ sender: UISlider) {
        lblAltura.text="\(String(format: "%.2f", sender.value)) M"
        altura = Double(sender.value)
    }
    
    @IBAction func btnCalcular(_ sender: UIButton) {
        print("calcular")
        cerebroCalculadora.calcularIMC(peso: Float(peso), altura: Float(altura))
        performSegue(withIdentifier: "calcularSegue", sender: self)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let objDestino=segue.destination as! SecondViewController
        //objDestino.valor
    }
    
}

