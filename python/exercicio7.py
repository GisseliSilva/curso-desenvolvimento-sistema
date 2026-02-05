#crie uma função que calcule a área de um retângulo (Base x Altura)

def area (base , altura  ): 
    resultado = base * altura 
    print(f"A área do retângulo é: {resultado}")

base = int(input("Digite a base do retângulo: "))
altura = int (input("Digite a altura do retângulo: "))

area(base,altura)
  