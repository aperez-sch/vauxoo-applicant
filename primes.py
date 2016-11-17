"""
Modulo para implementar si un numero es primo
"""


class PrimeClass(object):
    """
    clase que verifica si un numero es primo
    """

    def is_prime(self, numero):
        """
        metodo que implementa si un numero es primo
        """
        if numero == 1 or numero == 2:  # si el numero 1 o 2 es primo
            return True
        else:  # sino se verifica que solo se divida por 1 y el
            i = 2
            while i < numero:
                numprimo = numero % i
                if numprimo == 0:
                    i = numero
                i = i + 1
            if numprimo == 0:
                return False
            else:
                return True
