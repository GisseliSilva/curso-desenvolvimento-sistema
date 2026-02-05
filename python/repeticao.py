'''i = 1
while i <5:
    print(i)
    i += 1 # i = i +1 
'''

i = 0

while i < 4:
    print('olá')
    i += 1 

'''while: usa quando quer repetir o código ENQUANTO a condição
for VERDADEIRA. Quando usar: quando não se 
conhece o número previamente 
For: quando se sabe o número de repetição ou quando 
iterar sobre uma sequência'''

alunos = ['fulano', 'beltrano', 'ciclano']

'''
for aluno in alunos: # para elementos in vetor
    print(f'Aluno: {aluno}')
# para cada aluno, dentro de ALUNOS faça:

frutas = ['morango', 'abacate', 'laranja']
for fruta in frutas:
    print(f'fruta: {fruta}')
'''

#tabuada

numero = int(input('Digite o número para ver a tabuada'))
print(f'Tabuada do {numero}:')

for i in range(1, 11): #range: sequência de números inteiros. range(início,parada)
    resultado = numero * i
    print(f'{numero} X {i} = {resultado}')
    




