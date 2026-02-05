    
quadrado = lambda x: x **2
print(quadrado(5))
    #lambda é a papalavra-chave que define a função anônima
def quadrado(x):
    return x**2
'''Crie uma função anônima que recebe um número e retorme "par" se for 
par e "ímpar" se for ímpar'''
par_ou_impar = lambda x: 'par' if x % 2 == 0 else 'ímpar'