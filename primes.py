"""
Your module documentation here
"""


class PrimeClass(object):

    def aplicacion(self):
        # Agregamos una excepcion en caso de ingresar un valor no numero
        try:
            # Cambiamos a entero
            numero = int(input('Ingresa un numero: '))
    # Evaluamos si es primo con la funcion
            result = self.esPrimo(numero)
    # Evaluamos la respuesta
            if result is True:
                print('El numero es primo!!')
                self.aplicacion()
            else:
                print('El numero no es primo!')
                self.aplicacion()
        except ValueError:
            print("No es un numero!")
            self.aplicacion()

    def esPrimo(self, numero):
        # Validamos los numeros que son primos y pueden dar residuo de 1
        if numero < 1:
            return False
        elif numero == 2:
            return True
        else:
            # Cualquier numero que tenga mas de dos divisores no es primo
            for i in range(2, numero):
                if numero % i == 0:
                    return False
        return True
