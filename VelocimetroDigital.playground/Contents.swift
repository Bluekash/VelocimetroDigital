//: Velocimetro Digital
// Jose Miyashiro

import UIKit

enum Velocidades: Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad = Velocidades.Apagado

    init() {
        self.velocidad = Velocidades.Apagado
    }

    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String ) {
        switch velocidad {
        case .Apagado:
            velocidad = .VelocidadBaja
            return (0, "Apagado")
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            return (20, "VelocidadBaja")
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            return (50, "VelocidadMedia")
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            return (120, "VelocidadAlta")
        }
    }
}


var auto = Auto()

for _ in 1...20 {
    print(auto.cambioDeVelocidad())
}




