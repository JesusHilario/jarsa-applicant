"""
Your module documentation here
"""


class CalculatorClass(object):

    def sum(self):
        try:
            # Crear lista vacia
            mi_lista = []
            # Obtener datos y convertir a entero
            cantidad = int(input('Cuantos valores va a sumar?'))
            # Creamos variable gloval dentro de la funcion
            total = 0
            if cantidad >= 2:
                # Creamos el iterator usaremos while para
                # manipularlo en caso de error
                iterador = 0
                while(iterador < cantidad):
                    try:
                        # Incrementamos
                        iterador = iterador + 1
                        # Agregamos el valor a la lista
                        mi_lista.append(
                            int(input('Ingresa un valor '
                                      + str(iterador) + ':')))
                    except ValueError:
                        # Disminuimos en caso de error 
                        # para quedar en el indice anterior
                        iterador = iterador - 1
                        print("No ingreso un numero vuelva a intentar")
                # Recorremos la lista con for para sumar los valores
                for i in range(len(mi_lista)):
                    total = total + mi_lista[i]
                print("El total es: ", total)
            else:
                # Error en caso de no agregar mas de dos numeros
                print("No es posible sumar menos de dos numeros!")
                # Ejecutamos de nuevo la misma funcion para repetir operacion
                self.sum()
                # Preguntamos que se decea hacer
            if input('Decea seguir sumando? \
                Para continuar ingresa [s] y presione dos veces enter!') == 's':
                self.sum()
        except ValueError:
            # Validamos en caso de no recivir un numero con una excepcion
            print("No es un numero!")
            # Ejecutamos de nuevo la misma funcion para repetir operacion
            self.sum()
