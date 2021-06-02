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




