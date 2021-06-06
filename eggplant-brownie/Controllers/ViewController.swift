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

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - Atributos
    
    var delegate: AdicionaRefeicaoDelegate?
    var itens: Array<Item> = [
        Item(nome: "Molho de tomate", calorias: 10),
        Item(nome: "Queijo", calorias: 8),
        Item(nome: "Molho de pimenta", calorias: 1),
        Item(nome: "Manjericão", calorias: 3)
    ]
    var itensSelecionados: Array<Item> = []
    
    // MARK: - IBOutlet
    
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet var felicidadeTextField: UITextField?
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = itens[indexPath.row].nome
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) else { return }
        if(cell.accessoryType == .none){
            cell.accessoryType = .checkmark
            addItem(indexPath)
        }else {
            cell.accessoryType = .none
            
            removeItem(indexPath)
        }
    }
    
    private func addItem(_ index: IndexPath) {
        let item = itens[index.row]
        itensSelecionados.append(item)
    }

    private func removeItem(_ indexPath: IndexPath) {
        let item = itens[indexPath.row]
        if let position = itensSelecionados.firstIndex(of: item){
            itensSelecionados.remove(at: position)
        }
    }
    
    // MARK: - IBAction
    
    @IBAction func adiciona() {
        
        guard let nomeRefeicao = nomeTextField?.text else {
            return
        }
        
        guard let felicidadeRefeicao = felicidadeTextField?.text, let felicidade = Int(felicidadeRefeicao) else {
            return
        }
        
        let refeicao = Refeicao(nome: nomeRefeicao, felicidade: felicidade,itens: itensSelecionados)
        
        delegate?.add(refeicao)
        navigationController?.popViewController(animated: true)
    }
}
