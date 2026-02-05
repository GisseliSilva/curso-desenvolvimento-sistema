'''8.	Leia a distância em km e a quantidade de litros de gasolina consumidos por 
um carro em um percurso, calcule o consumo em km/l e escreva uma mensagem de acordo 
com a tabela abaixo:'''

km = float(input("Qual a distancia em km: "))
gasolina = float(input("Qual a quantidade de gasolina: "))

calculo = km / gasolina 

if calculo < 8:
    print("Venda o carro!")
elif calculo >= 8 and calculo <= 12:
    print("Econômico")
else:
    print("Super econômico")