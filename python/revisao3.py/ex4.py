'''4.	Crie uma classe Banco com um método para adicionar clientes 
(objetos da classe Cliente) e outro para listar todos os clientes.'''

class Cliente:
    def __init__(self, nome):
        self.nome = nome 
    def __str__(self):
        return self.nome

class Banco:
    def __init__(self):
        self.clientes = []
    
    def adicionar_clientes(self, cliente):
        self.clientes.append(cliente)
        print(f"Cliente {cliente} adicionad com sucesso!")

    def lista_clientes(self):
        if not self.clientes:
            print("Nenhum cliente cadastrado ")
        else:
            print("Lista de clientes: ")
            for cliente in self.clientes:
                print(f"- {cliente}")

    
banco = Banco()

clientes1 = Cliente("Luana")
Clientes2 = Cliente("bruno")

banco.adicionar_cliente(clientes1)
banco.adicionar_cliente(clientes2)