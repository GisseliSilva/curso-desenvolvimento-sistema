#acessar elementos
vetor = ["a", "b", "c", 1, 2 ,30]
primeiro = vetor[0]

#Fatiamento (slicing)
#Pega uma faixa de elemntos
sub_vetor = vetor[1:4] #pega do "b" ao "2"
print(sub_vetor)

#Adicionar elementos
vetor.append("d") #adiciona elementos ao final do vetor
print(vetor)

#adicionar vários elementos de uma vez
vetor.extend([4,5])

#remor elementos
vetor.remove("b")

#Remover elemento por índice(posição)
del vetor[2]
#print (vetor)

#Remove elementos pela posição 
frutas = ["morango", "maça" , "banana", "pêra", "kiwi", "Pitaya"]
frutas.pop(2)
print(frutas)


#atualizar elementos
#atribui um novo valor para a posição específica
vetor[0] = "JLR"
print(vetor)

#len (IMPORTANTE) = length, contar elementos 
tamanho_vetor = len(vetor)
print(vetor)

#ordenação 
matriculas = ["Yasmin", "Nick","Rayane", "Sophia","Beatriz","Maria L"]
matriculas.sort() #"sort" deixa em ordem alfabetica
print (matriculas)

#criar nova lista ordenada, um de baixo do outro 
novo_vetor = sorted (matriculas)

#Iteração : percorre os elementos 
for estudante in matriculas:
    print(estudante)
    
#Dividir strings em palavras
frase = "Python é muito bom!"
palavras = frase.split()
print(palavras)

#Juntar palavras em string 
nova_frase = " ".join(palavras)

#Operações matemáticas em vetores numericos
vetor_numerico = [1,2,3,4]
for i in  range(len(vetor_numerico)):
    vetor_numerico[i] *=2 #vetor_numerico[i] = vetor_numerico[2] *2
print(vetor_numerico)




