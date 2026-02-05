from aluno import Aluno

def main():
    print("Cadastro do aluno: ")
    nome = input("Nome: ")
    matriculas = input("Matricula: ")
    curso = input("Curso: ")

    disciplinas = []
    notas = []

    print("Informe disciplinas e as notas correspondentes: ")
    for i in range(3):
        disciplina = input(f"Nome da disciplina {i+1}: ")
    
    while True:
        try:
            nota = float(input(f"Nota da disciplina {disciplina}: "))
            if 0 <= nota <=10:
                break
            else:
                print("A nota deve ser entre 0 e 10.")
        except ValueError:
            print("Digite uma nova válida {número}.")
    disciplinas.append(disciplinas)
    notas.append(nota)

    aluno = aluno(nome, matriculas, curso, disciplinas, notas)

    print("\n Resultados das disciplinas: ")
    for disciplina in aluno.disciplinas:
        nota = aluno.notas[aluno.disciplinas.index(disciplina)]
        status = "Aprovado" if aluno.verificar_aprovacao(disciplina) else "Reprovado"
        print(f"Displina {disciplina} - Nota: {nota:.1f} - {status}")

