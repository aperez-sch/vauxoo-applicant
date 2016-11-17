"""
Modulo para calcular suma de listado de numeros
"""


class CalculatorClass(object):
    """
    clase que calcula suma de lista de numeros
    """

    def sum(self, var1, var2, *varn):
        """
        metodo que calcula la suma de una lista de numeros
        """
        suma = var1 + var2
        for valor in varn:
            suma = suma + valor
        return suma  # retorna la sumatoria de la lista
