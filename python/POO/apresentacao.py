class Pessoa:
    def __init__(self, nome, idade): #init/contrutor:inicializa atribus ao criar o objeto
        self.nome = nome  
        self.idade = idade

    def apresentar(self):
        print(f"olá, meu nome é {self.nome} e tenho {self.idade} annos.")

pessoa1 = Pessoa("Ana",25)
pessoa2 = Pessoa("Thais",27)

pessoa1.apresentar()
pessoa2.apresentar()