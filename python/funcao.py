#Função x Classe
#função: bloco de código que executa uma tarefa 
#classe: modelo para criar objeto 
#objeto: estrutura que representa uma  entidade do mundo real 
#conceito abstrato dentro de um programa 

class ContaBancaria:
    def __init__(self, titular, saldo_inicial=0) :
    #quando ultilizar __init__: quando precisa inicializar
    # o objeto com algum valor ou configuração 
        self.titular = titular #instância atual do objeto
        self.saldo = saldo_inicial

    def depositar(self, valor):
        if valor > 0:
            self.saldo += valor 
            print(f"depósito de R${valor: .2f}")
        else: 
            print("valor de depósito inválido!")
    
    def sacar(self, valor):
        if 0 < valor <= self.saldo:
            self.saldo -= valor 
            print(f"sacar de R${valor: .2f} realizado com sucesso!")
        else:
            print("valor de saque inválido")
    
    def consultar_saldo(self):
        print(f"seu saldo atual é: R$ {self.saldo: .2f}")
 
conta = ContaBancaria("gisseli, 1000")
conta.consultar_saldo()
conta.depositar(500)
conta.sacar(200)
conta.consultar_saldo()
