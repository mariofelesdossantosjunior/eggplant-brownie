import UIKit

let endereco = "Paraná"
//endereco = "São Paulo"

let nome = "Churros"
let felicidade: Int = 5
let caloria: Double = 70.5
let vegetal: Bool = false

func alimentoConsumido(){
    print("o alimento consumido foi \(nome)")
}

alimentoConsumido()

func alimentoConsumidoComParametro(nome: String,caloria: Double){
    print("O alimento consumido foi: \(nome), com caloria \(caloria)")
}

alimentoConsumidoComParametro(nome: nome, caloria: caloria)

let caloria1 = 50.5
let caloria2 = 100.2
let caloria3 = 45.2
let caloria4 = 500.0

let totalDeCaloria = [caloria, caloria1, caloria2, caloria3, caloria4]

print(totalDeCaloria)

/**
 Exemplos de For
 */

for item in totalDeCaloria {
    print(item)
}

for i in 0...totalDeCaloria.count-1{
    print(i)
    print(totalDeCaloria[i])
}

let totalDeCalorias = [50.6, 100]

func todasCalorias(totalDeCalorias: Array<Double>) -> Double{
    var total: Double = 0
    for caloria in totalDeCalorias {
        total += caloria
    }

    return total
}

let total = todasCalorias(totalDeCalorias: totalDeCalorias)
print(total)

var notas = [9, 6.5, 4, 8.25]
var soma: Double = 0
for nota in notas {
  soma += nota
}
print(soma / Double(notas.count))


/**
 Criação das estruturas de classes
 */

class Refeicao {
    var nome: String?
    var felicidade: Int?
}

//Instanciando primeira classe
let refeicao = Refeicao()
//refeicao.nome = "Cafe"

if refeicao.nome != nil {
    print(refeicao.nome)
}

//Boas Praticas

if let nome = refeicao.nome{
    print(nome)
}

//Guard Let
func exibeNomeDaRefeicao(){
    if let nome = refeicao.nome{
        print(nome)
    }

    guard let nome = refeicao.nome else {
        //?????
        return
    }
    
    print(nome)
}

exibeNomeDaRefeicao()

//Equivalente Elvis Operator Kotlin

let mario: String? = nil
print(mario ?? "haha")
print(mario != nil ? mario : "BlaBla")

let numero = Int("5")
if let n = numero {
    print(n)
}else {
    print("erro ao converter string para int")
}


class Pessoa {
  var nome:String?
}
let pedro = Pessoa()
print(pedro.nome)


class RefeicaoTwo{
    var nome: String
    var felicidade: Int
    var itens: Array<Item> = []
    
    init(nome: String, felicidade: Int) {
        self.nome = nome
        self.felicidade = felicidade
    }
    
    func totalDeCalorias() -> Double{
        var total = 0.0
        for item in itens{
            total += item.calorias
        }
        return total
    }
}

class Item{
    var nome: String
    var calorias: Double
    
    init(nome: String, calorias: Double) {
        self.nome =  nome
        self.calorias = calorias
    }
}

let refeicaoTwo = RefeicaoTwo(nome: "Arroz", felicidade: 4)

let arroz = Item(nome: "Arroz", calorias: 10.0)
let feijao = Item(nome: "Feijao", calorias: 20.0)
let carne = Item(nome: "Carne", calorias: 34)

refeicaoTwo.itens.append(arroz)
refeicaoTwo.itens.append(feijao)
refeicaoTwo.itens.append(carne)

print(refeicaoTwo.nome)
if let primeiroItem = refeicaoTwo.itens.first?.nome{
    print(primeiroItem)
}

print(refeicaoTwo.totalDeCalorias())










