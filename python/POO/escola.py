from abc import ABC, abstractmethod
#from <módulo> import <nome>
#módulo: nome do módulo ou pacote que você irá importar
#nome: nome da função, classe, variável ou dubmódulo que deseja importar
#import React from "react";

'''Classe abstrata: classe que não pode ser instanciada diretamente(não consigo criar)
objeto diretamente nela. Definimos regras que devem ser obedecidas'''
class Curso(ABC):
    def __init__(self,nome):
        self.nome = nome
        self.aluno = []
    
    def inscrever_alunos(self,aluno,matricula):
        self.aluno.append((aluno, matricula))
        print(f"Aluno(a): {aluno} com matricula nº: {matricula} inscrito no curso: {self.nome}.")
    @abstractmethod
    def info_curso(self):
        pass #como se fosse  break

    def info_alunos(self):
        print(f"Alunos inscritos no curso {self.nome}:")
        for aluno,matricula in self.aluno:
            print(f"- Aluno(a): {aluno}, Matricula: {matricula}") 
       

class CursoMatematica(Curso):
    def info_curso(self):
        print(f"Curso de {self.nome}: Foco em álgebra e geometria")


#Curso específico
class CursoHistoria(Curso):
    def info_curso(self):
        print(f"Curso de {self.nome}: Foco em história mundial e cultura ")




#testar 
curso1 = CursoMatematica("Matemática")
curso2 = CursoHistoria("História")

curso1.inscrever_alunos("Breno","res092360")
curso1.inscrever_alunos("Rayane", "res012364")
curso1.info_curso()
curso1.info_alunos()
curso1.info_alunos()

curso2.inscrever_alunos("Ágatha", "res642231")
curso2.info_curso()
curso2.info_alunos()
curso2.info_alunos()

