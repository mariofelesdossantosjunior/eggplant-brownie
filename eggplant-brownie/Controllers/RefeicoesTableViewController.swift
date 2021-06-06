//
//  RefeicoesTableViewController.swift
//  eggplant-brownie
//
//  Created by Mario Feles on 05/06/21.
//

import Foundation
import UIKit

class RefeicoesTableViewController: UITableViewController{
    
    let refeicoes = [
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
}