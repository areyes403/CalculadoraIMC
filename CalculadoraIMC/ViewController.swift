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
    
    @IBOutlet weak var slPeso: UISlider!
    @IBOutlet weak var slAltura: UISlider!
    var cerebroCalculadora = CerebroCalculadora()
   
    var peso:Double = 75.0
    var altura:Double = 1.6
    var imc:Double = 0.0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblAltura.text="\(slAltura.value) cm"
        lblPeso.text="\(slPeso.value) kg"
        
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
        lblAltura.text="\(String(format: "%.2f", sender.value)) cm"
        altura = Double(sender.value)
    }
    
    @IBAction func btnCalcular(_ sender: UIButton) {
        print("calcular")
        
        //let peso=slPeso.value
        //let alt=slAltura.value
        
        cerebroCalculadora.calcularIMC(peso: Float(peso), altura: Float(altura))
        performSegue(withIdentifier: "calcularSegue", sender: self)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let objDestino=segue.destination as! SecondViewController
        objDestino.valorIMC=cerebroCalculadora.retornarValorIMC()
        objDestino.mensaje=cerebroCalculadora.darAviso()
        objDestino.color=cerebroCalculadora.returnColor()
        //objDestino.valor
    }
    
}

