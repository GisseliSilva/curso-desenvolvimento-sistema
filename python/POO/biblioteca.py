class Livros:
    def __init__(self, titulo, autor): 
        self.titulo = titulo 
        self.autor= autor 

def main():
    livros = [
        Livros("Dom Casmurro", "Machado de Assis"),
        Livros("Senhor dos Anéis", "J. R. R. Tolkien"),
        Livros("Harry Potter", "J. K. Rowling"),
        Livros("A menina que roubava Livros", "Markus Zusak"),
        Livros("Assassinato do Expresso Oriente", "Agatha Christie"),
        Livros("O pequeno Principer", "Antoine de Saint-Exupéry"),
        Livros("Jogos Vorazes", "Suzanne Collins"),
        Livros("Fogo e Sangue", "George RR Martin"),
        Livros("Quem é Você,Alaska", "João Verde"),
        Livros("Verity", "Colleen Hoover")
        ]

    #solicitar nome do usuario
    nome = input("Digite o seu nome: ")

    #exibir lista d livros disponiveis
    print("\n Livros disponíveis para empréstimo: ")
    for i, livro in enumerate(livros, start=1):
        print(f"{i}. {livro.titulo} - {livro.autor}")
    
    #Solicitar a escolha do livro pelo usuario
    while True:
        escolha = int(input("\n Digite o número do livro que deseja pegar emprestado: "))

        if 1 <= escolha <= len(livros):
            livro_selecionado = livros[escolha -1]
            break
        else:
            print(f"Por favor, digite um número entre 1 e {len(livros)}.")

    print(f"\n Empréstimo confirmado!")
    print(f"{nome} pegou emprestado o livro '{livro_selecionado.titulo}' de {livro_selecionado.autor}.")

main()
        




    