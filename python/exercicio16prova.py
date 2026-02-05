n1 = int(input('Digite o primeiro número inteiro: '))
n2 = int(input('Digite o segundo número inteiro: '))

if n1 == n2:
    print('Os números são iguais ')
else:
    maior = max(n1,n2)
    print(f"O maior número é: ",maior)