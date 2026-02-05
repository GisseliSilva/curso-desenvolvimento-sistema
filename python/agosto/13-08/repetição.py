#while: usa quando quer repetir o codigo enquanto a condição for verdadeira.
#quando usar: quando nao se conhece o numero previamente.

i = 1

while i < 5:
    print(i)
    i += 1
    
i = 0   #i= contador

while i < 4:
    print("Olá")
    i += 1
    
#for: quando se sabe o numero de repeticoes ou quando iterar sobre uma seuqencia.

alunos = ["Nics", "Gigi", "Sophs", "Yas", "Bibi", "Isa", "Nalu"]

for aluno in alunos:
    print(f"Aluno: {aluno}")

frutas = ["Banana", "Maça", "Morango", "Abacaxi"] 

for fruta in frutas:
    print(f"Fruta: {fruta}")
 
 #tabuada 
 
numero = int(input("Digite o número para ver a tabuada: "))  
print(f"Tabuada do {numero}: ")

for i in range (1,11):
    resultado = numero * i
    print(f"{numero} X {i} = {resultado}")

