'''2.	Faça um programa que receba a altura e o sexo de uma pessoa 
e calcule e mostre seu peso ideal, utilizando as seguintes fórmulas 
(onde h corresponde à altura): - Homens: (72,7 x h) - 58 - 
Mulheres: (62,1 x h) - 44,7'''

altura = float(input("Digite sua altura: "))
sexo = input("Digite o 'f' para feminino e 'm' para masculino: ").upper()

masculino = (72.7 * altura) - 58
feminino = (62.1 * altura) - 44.7

if sexo == "f":
    print(f"seu peso ideal é: {feminino:.2f}")
else:
    print(f"seu peso ideal é: {masculino}")
