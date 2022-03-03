//
//  CerebroCalculadora.swift
//  CalculadoraIMC
//
//  Created by mac17 on 01/03/22.
//

import Foundation
import UIKit

struct CerebroCalculadora{
    
    var imc:IMC?
    
    mutating func calcularIMC(peso:Float,altura:Float){
        
        let valorIMC=peso/altura*altura
        
        print(String(valorIMC))
        
        
        if valorIMC < 18.5 {
            imc = IMC(valor: valorIMC, mensaje: "Falta comer", color: UIColor.yellow,imagen: UIImage(systemName:"nutrir"))
        }else if valorIMC < 24.9 {
            imc = IMC(valor: valorIMC, mensaje: "Todo gud", color: UIColor.green, imagen: UIImage(systemName:"todogud"))
        }else if valorIMC < 29.9 {
            imc = IMC(valor: valorIMC, mensaje: "Advertencia", color: UIColor.red, imagen: UIImage(systemName:"sobrepeso"))
        }
    }
    
    func retornarValorIMC()-> String{
        let imc2Decimales = String(format: "%.2f", imc?.valor ?? 0.0)
        return imc2Decimales
    }
    
    func darAviso() -> String{
        return imc?.mensaje ?? "no hay mensaje"
    }
    
    func returnColor() -> UIColor{
        return imc?.color ?? UIColor.cyan
    }
    
    func retornarImagen() -> UIImage{
        return imc?.imagen ?? UIImage(named: "imc")!
    }
    
}
