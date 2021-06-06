//
//  RefeicoesTableViewController.swift
//  eggplant-brownie
//
//  Created by Mario Feles on 05/06/21.
//

import Foundation
import UIKit

class RefeicoesTableViewController: UITableViewController, ViewControllerDelegate{
    
    var refeicoes = [
        Refeicao(nome: "Macarrão", felicidade: 10),
        Refeicao(nome: "Salada", felicidade: 3 ),
        Refeicao(nome: "Carne", felicidade: 8)
    ]
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        let refeicao = refeicoes[indexPath.row]
        cell.textLabel?.text = refeicao.nome
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    
    func add(_ refeicao: Refeicao){
        refeicoes.append(refeicao)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "adicionar"{
            if let viewController = segue.destination as? ViewController{
                viewController.delegate = self
            }
        }
    }
}
