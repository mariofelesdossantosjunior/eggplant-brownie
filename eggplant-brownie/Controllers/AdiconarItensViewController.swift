//
//  AdiconarItensViewController.swift
//  eggplant-brownie
//
//  Created by Mario Feles on 06/06/21.
//

import UIKit

protocol AdicionaItensDelegate {
    func add(_ item:Item)
}

class AdiconarItensViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var caloriaTextField: UITextField!
    
    //MARK: - Atributes
    var delegate: AdicionaItensDelegate?
    
    init(delegate: AdicionaItensDelegate) {
        super.init(nibName: "AdiconarItensViewController", bundle: nil)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    //MARK: - View Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - IBAction
    
    @IBAction func adicionarItem(_ sender: Any) {
        guard let nome = nomeTextField.text, let calorias = caloriaTextField.text else {
            return
        }
        
        if let numeroDeCalorias = Double(calorias){
            let item = Item(nome: nome, calorias: numeroDeCalorias)
            delegate?.add(item)
            navigationController?.popViewController(animated: true)
        }
    }
    
}
