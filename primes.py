"""
Modulo para implementar si un numero es primo
"""


class PrimeClass(object):
    """
    clase que verifica si un numero es primo
    """

    def is_prime(self, num_int):
        """
        metodo que implementa si un numero es primo
        """
        self.numero = num_int
        if self.numero == 1 or self.numero == 2:  # si el numero 1 o 2 es primo
            return True
        else:  # sino se verifica que solo se divida por 1 y el
            i = 2
            while i < self.numero:
                numprimo = self.numero % i
                if numprimo == 0:
                    i = self.numero
                i = i + 1
            if numprimo == 0:
                return False
            else:
                return True
