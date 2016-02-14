
//Tarea Velocímetro

enum Velocidades : Int {
    case     apagado = 0
            ,velocidadBaja = 20
            ,velocidadMedia = 50
            ,velocidadAlta = 120
    
    init (velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init() {
        velocidad = Velocidades(velocidadInicial: .apagado)
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String){
        var velocidadEnCadena: String = ""
        
        switch velocidad {
        case .apagado:
            velocidad = .velocidadBaja
            velocidadEnCadena = "Velocidad baja"
        case .velocidadBaja:
            velocidad = .velocidadMedia
            velocidadEnCadena = "Velocidad media"
        case .velocidadMedia:
            velocidad = .velocidadAlta
            velocidadEnCadena = "Velocidad alta"
        default:
            velocidad = .velocidadMedia
            velocidadEnCadena = "Velocidad media"
        }
        return (velocidad.rawValue, velocidadEnCadena)
    }
}

let auto = Auto()

//NOTA: EN LAS INSTRUCCIONES DE LA TAREA APARECE EN EL EJEMPLO DE ITERACIONES EL VALOR INICIAL QUE ES APAGADO.
//SIN EMBARGO LAS INSTRUCCIONES DICEN QUE IMPRIMA LA FUNCION CAMBIO DE VELOCIDAD POR LO TANTO NUNCA IMPRIMIRA EL VALOR INICIAL DE APAGADO
//YA QUE DESDE LA PRIMERA IMPRESION SE HACE UN CAMBIO DE VELOCIDAD.

for i in 0..<20{
    print(auto.cambioDeVelocidad())
}