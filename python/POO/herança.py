class Carro:
    def __init__(self, motor, rodas):
        self.motor = motor 
        self.rodas = rodas 
    
    def informacao(self):
        return f"Carro com motor {self.motor} e {self.rodas}."
    
class CarroEsportivo(Carro):
    def __init__(self, motor, rodas, turbo):
        super().__init__(motor, rodas)
        self.turbo = turbo

    def ligar_turbo(self):
        return  f"Turbo ligado!" if self.turbo else "Sem turbo"
    
    def informacoa(self):
        base_informacao = super().informacao()
        return f"{base_informacao} Turbo: {"sim" if self.turbo else "Não"}"
    
carro1 = CarroEsportivo("V8", 4, True)
print(carro1.informacao())

print(carro1.ligar_turbo())

