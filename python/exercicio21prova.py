while True:
    numero = int(input('Digite um número inteiro (0 para sair): '))

    if numero == 0: 
        break
    if numero % 2 == 0:
        print('par')
    else:
        print('impar')