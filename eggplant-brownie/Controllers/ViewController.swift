//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Mario Feles on 01/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet var felicidadeTextField: UITextField?
    
    @IBAction func adiciona() { 
        if let nome = nomeTextField?.text, let felicidade = felicidadeTextField?.text{
            if let felicidade = Int(felicidade){
            let refeicao = Refeicao(nome: nome, felicidade: felicidade)
            }else{
                print("Erro ao gerar refeicao!")
            }
        }
    }
}
