funcionario = []

while True:
    nome = input('digite o nome do funcionario (ou 0 para encerrar):')
    if nome == '0':
        break #parada
    funcionario.append(nome)

print('\nlista de funcionários: ')
for funcionario in funcionario: 
     print(f'funcionario: {funcionario}')

