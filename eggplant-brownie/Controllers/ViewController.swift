//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Mario Feles on 01/06/21.
//

import UIKit

protocol AdicionaRefeicaoDelegate {
    func add(_ refeicao: Refeicao)
}

class ViewController: UIViewController {
    
    var delegate: AdicionaRefeicaoDelegate?
    
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet var felicidadeTextField: UITextField?
    
    @IBAction func adiciona() {
        
        guard let nomeRefeicao = nomeTextField?.text else {
            return
        }
        
        guard let felicidadeRefeicao = felicidadeTextField?.text, let felicidade = Int(felicidadeRefeicao) else {
            return
        }
        
        let refeicao = Refeicao(nome: nomeRefeicao, felicidade: felicidade)
        
        delegate?.add(refeicao)
        navigationController?.popViewController(animated: true)
    }

}
