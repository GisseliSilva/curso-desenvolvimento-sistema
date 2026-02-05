import mysql.connector
from mysql.connector import Error 

def create_db_connection(host, user, password, database):
    connection = None 

    try:
        connection = mysql.connector.connect(
            host= host,
            user = user,
            password = password,
            database = database 
        )
        print("Conexão ao  banco de dados MySQL foi um sucesso")
    except Error as err:
        print(f"Erro: {err}")
    return connection

def execute_query(connection, query):
    cursor = connection.cursor()
    try:
        cursor.execute(query)
        connection.commit()
        print("Query executada com sucesso")
    except mysql.connector.Error as err:
        print(f"Erro ao executar a query: {err}")

def cadastrar_pessoa(connection, nome, email, idade):
    query = """
    INSERT INTO pessoa (nome, email, idade)
    VALUES (%s, %s, %s)
    """
    cursor = connection.cursor()
    try:
        cursor.execute(query, (nome, email, idade))
        connection.commit()
        print("Pessoa cadastrada com sucesso!")
    except mysql.connector.Error as err:
        print(f"Erro ao cadastra pessoa: {err}")
    finally:
        cursor.close()

def buscar_pessoa(connection, nome_parcial):
    query = """
    SELECT * FROM pessoas
    WHERE nome LIKE %s;
    """

    cursor = connection.cursor()
    try:
        cursor.execute(query, ('%' + nome_parcial + '%',))
        resultados = cursor.fetchall()
        return resultados 
    except mysql.connector.Error as err:
        print(f"Erro ao buscar pessoa: {err}")
    finally:
        cursor.close()


host = "localhost"
user = "root"
password = "alunolab"
database = "mvc"

conexao = create_db_connection(host, user, password, database)