class Aluno:
    def __init__(self,nome,matricula,curso, disciplinas,notas):
        self.nome = nome
        self.matricula = matricula
        self.curso = curso
        self.disciplinas = disciplinas
        self.notas = notas

    def verificar_aprovacao(self, disciplina):
        if disciplina in self.disciplinas:
            indice = self.disciplinas.index(disciplina)
            return self.notas[indice] >= 7
        else:
            print(f"Disciplina '{disciplina}' não encontrada")      
   