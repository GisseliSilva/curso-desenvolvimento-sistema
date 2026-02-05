def pagina_introducao():
    mensagem = """
    --- SISTEMA CADASTRAL---
    1 - Cadastrar Pessoa 
    2 - Buscar Pesssoa por Nome 
    3 - Sair 
    """

    print(mensagem)
    comando = input("comando: ")
    return comando 

