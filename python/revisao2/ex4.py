'''4.	Escreva um programa que leia um número inteiro entre 1 e 7 
e imprima o dia da semana correspondente a esse número. 
Isto é: domingo se for 1, segunda-feira se for 2, e assim por diante.'''

numero = int(input("Digite um número entre 1 e 7: "))

if numero == 1:
    print("Segunda")

elif numero == 2:
    print("Terça") 

elif numero == 3:
    print("Quarta") 

elif numero == 4:
    print("Quinta")

elif numero == 5:
    print("Sexta") 

elif numero == 6:
    print("Sabado")

else:
    print("Domingo") 