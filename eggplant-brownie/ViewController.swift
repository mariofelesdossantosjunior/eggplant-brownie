				//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Mario Feles on 01/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nomeTextField: UITextField!
    @IBOutlet var felicidadeTextField: UITextField!
    
    @IBAction func adiciona() { 
        let nome = nomeTextField.text
        let felicidade = felicidadeTextField.text
        print("comi \(nome) e fique com felicidade \(felicidade)")
    }
}
