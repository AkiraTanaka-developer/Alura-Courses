
class Data:
    def __init__(self):
       self.dia = ''
       self.mes = ''
       self.ano = ''

    def data(self, dia, mes, ano):
        print("Digite a data atual")
        self.dia = input(dia)
        self.mes = input(mes)
        self.ano = input(ano)

    def exibir_data(self,dia, mes, ano):
        print("A data digitada é: {}/{}/{} ".format(self.dia, self.mes, self.ano))