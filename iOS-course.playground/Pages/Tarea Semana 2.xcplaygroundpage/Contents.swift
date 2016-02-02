
//Tarea: Juego de memoria.

import UIKit

/*
Algunos de los numeros pueden caer en mas de 1 condición, es por eso que no ad.
En las instrucciones no se especifica que solo se tomaría una condición en cuenta por lo tanto los números son evaluados en todas las posibles condiciones.
*/

for i in 0...100 {
    if i > 0 {
        if i % 5 == 0 {
            print("\(i) Bingo!!!")
        }
        if i % 2 == 0{
            print("\(i) par")
        } else {
            print("\(i) impar")
        }
        if i >= 30 && i <= 40 {
            print("\(i) Viva Swift!!!")
        }
    }
}
