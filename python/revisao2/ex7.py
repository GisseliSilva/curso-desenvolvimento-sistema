'''7.	Escreva o menu de opções abaixo. Leia a opção do usuário e execute a 
operação escolhida. Escreva uma mensagem de erro se a opção for inválida.
Escolha a opção:
1 - Soma de 2 números
2 - Diferença entre 2 números (maior pelo menor)
3 - Produto entre 2 números
4 - Divisão entre 2 números (o denominador não pode ser zero)
Opção:'''


num1 = int(input("Digite o primeiro número inteiro: "))
num2 = int(input("Digite o segundo número inteiro: "))


print("\n Menu: ")
print("1-soma")
print("2-Diferenca")
print("3-produto")
print("4-Divisão")

opcao = input("Escolha uma opção: ")

    
if opcao == "1":
    soma = num1 + num2
    print(f"A soma é: {soma}")

elif opcao == "2":
    diferenca = abs(num1 - num2)
    print(f"A diferença é: {diferenca}")

elif opcao == "3":
    produto = num1 * num2
    print(f"produto:  {produto}")

else:
    divisao = num1 / num2
    print(f"A divisão é: {divisao}")
            

