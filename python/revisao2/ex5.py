'''5.	Escreva um programa que leia um número inteiro entre 1 e 12 
e imprima o mês correspondente a esse número. 
Isto é: janeiro se for 1, fevereiro se for 2, e assim por diante.'''

numero = int(input("Digite um numero de 1 a 12: "))

if numero == 1:
    print("Janeiro")

elif numero == 2:
    print("Fevereiro") 

elif numero == 3:
    print("Março") 

elif numero == 4:
    print("Abril")

elif numero == 5:
    print("Maio") 

elif numero == 6:
    print("Junho")

elif numero == 7:
    print("Julho") 

elif numero == 8:
    print("Agosto") 

elif numero == 9:
    print("Setembro")

elif numero == 10:
    print("Outubro") 

elif numero == 11:
    print("Novembro")
    
else:
    print("Dezembro")