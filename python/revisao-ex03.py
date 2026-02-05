while True:
    nome = input('Digite o seu nome: ')
    if len(nome) >= 3: #len: contagem de letra
        break
    else:
        print('erro: nome tem que ter mais que 3 caractere.Tente novamente.\n')

while True:
    idade = int(input('Digite sua idade: '))
    if idade >= 0 or idade <= 150:
        break
    else:
        print('erro: numero maior que 0 e menor que 150.Tente novamente.\n')
        

while True:
    salario = float(input('Digite o seu sálario: '))
    if salario > 0:
        break
    else:
        print('erro: o valor tem que ser maior que 0.Tente novamente.\n')
    

while True:
    genero = input('Digite seu gênero. \n f (feminino), m (masculino) o (outros): ').upper()
    if genero == 'f' or genero == 'm' or genero == '0' :
        break
    else:
        print('erro: só pode ser f ou m.Tente novamente.\n')
        

while True:
    estadocivil = input ("Digite seu estado civil ('s'-Solteiro, 'c'-Casado , 'v'-viúvo, 'd'-Divorciado): ").lower()
    if estadocivil in ('s','c','v','d'):
        break
    else:
        print('erro: digite apenas s,c,v ou d.Tente novamente.\n')

print("informacões completa")
print(f'nome: {nome}')
print(f'idade: {idade}')
print(f'salario: R$ {salario:.2f}')

if genero == "F":
    print('Gênero feminino')
elif genero == "M": 
    print('Gênero masculino')
else:
    print("Gênero: outros")


if estadocivil == "s":
    print("Estado Civil:Solteiro(a)")
elif estadocivil == "c": 
    print("Estado Civil: Casado(a)")
elif estadocivil == "v": 
    print("Estado Civil: Viúvo(a)")
else:
    print("Estado Civil: Divorciado(a)")

















    






    


        
