#Controller: receberá o comando da View e decidirá qual ação tomar

from model import create_db_connection, cadastrar_pessoa,buscar_pessoa
from view import pagina_introducao

def processo_introducao() :
    comando = pagina_introducao()
    return comando 

def inicio():
    host = "localhost"
    user = "root"
    password = "alunolab"
    database = "mvc"
    conexao = create_db_connection(host, user, password, database)
    while True:
        comando = processo_introducao()
        match comando: 
            case '1':
                print("comando 1 selecionado: cadastrar pessoa")
                #chamar a função do Model para cadastrar
                nome = input("Nome: ")
                email = input("E-mail: ")
                idade = int(input("Idade: "))
                cadastrar_pessoa(conexao, nome, email, idade)
            case '2': 
                print("comando 2 selecionado: buscar pessoa")
                #chamar a função do Model para buscar dados 
                nome_busca = input("Nome para buscar: ")
                resultados = buscar_pessoa(conexao, nome_busca)
                for pessoa in resultados:
                    print(pessoa)
            case '3':
                print("Finalizando o programa")
                break
            case _:
                print("Comando não encontrado \n")
