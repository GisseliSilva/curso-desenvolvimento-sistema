while True:
    nome = input ('Digite o seu nome: ')
    senha = input ('Digite uma senha: ')
    if nome.lower() == nome.lower():
        print('erro: a senha não pode ser igual ao nome de usuário.Tente novamente. \n')
    else:
        print('cadastro realizado com sucesso')
        break

