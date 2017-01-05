//
//  ViewController.swift
//  convertidorMoneda
//
//  Created by Desarrollo Uxi on 04/01/17.
//  Copyright © 2017 Alberto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let valDolar: Float = 21.3890018
    let valEuro: Float = 22.6659252
    
    var convertDollar: Float = 0
    var convertEuro: Float = 0
    var valorAConvertir : Float = 0
    
    @IBOutlet weak var textValorAConvertir: UITextField!
    @IBOutlet weak var labelResultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        showResult(valorResultado:"")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonConvertirDolar(_ sender: Any) {
        self.convertir(moneda: valDolar)
    }
    
    @IBAction func buttonConvertirEuro(_ sender: Any) {
        self.convertir(moneda: valEuro)
    }
    
    private func convertir(moneda :Float){
        valorAConvertir = self.getValorAConvertir()
        let convert: Float = valorAConvertir / moneda
        self.showResult(valorResultado: convert)
    }
    
    private func getValorAConvertir() -> Float {
        if let texto = textValorAConvertir.text {
            return Float(texto)!
        }else{
            return 0
        }
    }
    
    private func showResult(valorResultado :Any){
        labelResultado.text = String(describing: valorResultado)
    }
}
