//
//  Item.swift
//  eggplant-brownie
//
//  Created by Mario Feles on 01/06/21.
//

import UIKit

class Item: NSObject {
    var nome: String
    var calorias: Double
    
    init(nome: String, calorias: Double) {
        self.nome =  nome
        self.calorias = calorias
    }
}
