# generate_synthetic_data.py
import random
from datetime import datetime, timedelta

def generate_phone_number():
    """Gera um número de telefone no formato (XX)9XXXX-XXXX."""
    return f"({random.randint(11, 99)})9{random.randint(1000, 9999)}-{random.randint(1000, 9999)}"

def generate_date(start_year, end_year):
    """Gera uma data aleatória entre start_year e end_year."""
    start_date = datetime(start_year, 1, 1)
    end_date = datetime(end_year, 12, 31)
    time_between_dates = end_date - start_date
    days_between_dates = time_between_dates.days
    random_number_of_days = random.randrange(days_between_dates)
    random_date = start_date + timedelta(days=random_number_of_days)
    return random_date.strftime('%Y-%m-%d')

def generate_timestamp(start_date, end_date):
    """Gera um timestamp aleatório entre duas datas."""
    start_dt = datetime.strptime(start_date, '%Y-%m-%d')
    end_dt = datetime.strptime(end_date, '%Y-%m-%d')
    time_between_dates = end_dt - start_dt
    seconds_between_dates = time_between_dates.total_seconds()
    random_number_of_seconds = random.randrange(int(seconds_between_dates))
    random_timestamp = start_dt + timedelta(seconds=random_number_of_seconds)
    return random_timestamp.strftime('%Y-%m-%d %H:%M:%S')

def generate_email(name, surname):
    """Gera um email simples."""
    return f"{name.lower()}.{surname.lower()}@{random.choice(['exemplo.com', 'dominio.com', 'escola.br'])}"

def generate_cep():
    """Gera um CEP no formato XXXXX-XXX."""
    return f"{random.randint(10000, 99999)}-{random.randint(100, 999)}"

def generate_notas():
    """Gera uma nota aleatória entre 0.00 e 10.00 com duas casas decimais."""
    return f"{random.uniform(0.00, 10.00):.2f}"

def generate_sql_insert_script(num_unidades=2, num_departamentos=20, num_professores=20000, num_alunos=70000,
                               num_func_adm=10000, num_cursos=50, num_disciplinas=200, num_ofertas_disciplina=1000,
                               num_matriculas=500000, num_pagamentos=500000, num_mensagens=100000, num_avaliacoes=100000):

    script_content = []

    # --- Unidade ---
    script_content.append("-- Populando Unidade")
    unidades = []
    for i in range(1, num_unidades + 1):
        unidade = {
            'idUnidade': i,
            'cidade': f'Cidade{i}',
            'estado': f'Estado{i}',
            'pais': 'Brasil',
            'predio_bloco': f'Bloco {i}'
        }
        unidades.append(unidade)
        script_content.append(f"INSERT INTO Unidade (idUnidade, cidade, estado, pais, predio_bloco) VALUES ({unidade['idUnidade']}, '{unidade['cidade']}', '{unidade['estado']}', '{unidade['pais']}', '{unidade['predio_bloco']}');")

    # --- Usuario, Professor, Aluno, Funcionario_Administrativo ---
    script_content.append("\n-- Populando Usuario, Professor, Aluno, Funcionario_Administrativo")
    usuarios = []
    professores = []
    alunos = []
    func_administrativos = []

    nomes_comuns = ["Ana", "João", "Maria", "Pedro", "Lucas", "Mariana", "Fernanda", "Rafael", "Julia", "Gabriel", "Luiza", "Bruno", "Beatriz", "Daniel", "Carolina", "Guilherme", "Isabela", "Arthur", "Laura", "Gustavo", "Sophia", "Felipe", "Leticia", "Vinicius", "Helena", "Eduardo", "Victoria", "Leonardo", "Manuela", "Diego", "Clara", "Thiago", "Alice", "Marcelo", "Lorena", "Rodrigo", "Valentina", "Ricardo", "Larissa", "Miguel", "Cecilia", "Caio", "Gabriela", "Vitor", "Antonia", "Paulo", "Ester", "Fabio", "Yasmin", "Alexandre", "Nicole", "Renato", "Melissa"]
    sobrenomes_comuns = ["Silva", "Santos", "Oliveira", "Souza", "Pereira", "Lima", "Costa", "Rodrigues", "Almeida", "Nascimento", "Ferreira", "Gomes", "Martins", "Carvalho", "Ribeiro", "Fernandes", "Barbosa", "Dias", "Mendes", "Freitas", "Rocha", "Pinto", "Correia", "Nunes", "Machado", "Castro", "Cunha", "Melo", "Fonseca", "Sales", "Brito", "Figueiredo", "Dutra", "Neves", "Gonçalves", "Vieira", "Andrade", "Barros", "Couto", "Moreira", "Araújo", "Moraes", "Borges", "Campos", "Cardoso", "Garcia", "Lopes", "Martins", "Monteiro"]
    ruas_comuns = [f"Rua {i}" for i in range(1, 101)]
    bairros_comuns = [f"Bairro {i}" for i in range(1, 11)]
    cidades_comuns = ["São Paulo", "Rio de Janeiro", "Belo Horizonte", "Brasília", "Salvador", "Fortaleza", "Curitiba", "Recife", "Porto Alegre"]
    estados_comuns = ["SP", "RJ", "MG", "DF", "BA", "CE", "PR", "PE", "RS"]

    # Criar um conjunto de chefes de departamento reais para uso
    chefe_professores_info = []
    for i in range(1, num_departamentos + 1):
        nome_chefe = random.choice(nomes_comuns)
        sobrenome_chefe = random.choice(sobrenomes_comuns)
        tel_chefe = generate_phone_number()
        email_chefe = generate_email(nome_chefe, sobrenome_chefe)
        sexo_chefe = random.choice(['M', 'F'])
        data_nascimento_chefe = generate_date(1960, 1985)
        endereco_rua = random.choice(ruas_comuns)
        endereco_numero = str(random.randint(1, 500))
        endereco_bairro = random.choice(bairros_comuns)
        endereco_cidade = random.choice(cidades_comuns)
        endereco_estado = random.choice(estados_comuns)
        endereco_cep = generate_cep()
        id_unidade = random.choice([u['idUnidade'] for u in unidades])

        chefe_professores_info.append({
            'nome': nome_chefe,
            'sobrenome': sobrenome_chefe,
            'numero_do_telefone': tel_chefe,
            'email': email_chefe,
            'sexo': sexo_chefe,
            'data_nascimento': data_nascimento_chefe,
            'rua': endereco_rua,
            'numero': endereco_numero,
            'bairro': endereco_bairro,
            'cidade': endereco_cidade,
            'estado': endereco_estado,
            'cep': endereco_cep,
            'idUnidade': id_unidade
        })

        script_content.append(f"INSERT INTO Usuario VALUES ('{nome_chefe}', '{sobrenome_chefe}', '{tel_chefe}', '{data_nascimento_chefe}', '{endereco_rua}', '{endereco_numero}', '{endereco_bairro}', '{endereco_cidade}', '{endereco_estado}', '{endereco_cep}', '{sexo_chefe}', '{email_chefe}', 'senha123');")
        script_content.append(f"INSERT INTO Professor VALUES ({id_unidade}, '{nome_chefe}', '{sobrenome_chefe}', '{tel_chefe}', 'Área {random.randint(1,20)}', 'Titulação {random.randint(1,20)}');")
        usuarios.append({'nome': nome_chefe, 'sobrenome': sobrenome_chefe, 'numero_de_telefone': tel_chefe})
        professores.append({'nome': nome_chefe, 'sobrenome': sobrenome_chefe, 'numero_do_telefone': tel_chefe, 'idUnidade': id_unidade})

    # Populando o restante dos Professores
    for i in range(len(chefe_professores_info) + 1, num_professores + 1):
        nome = random.choice(nomes_comuns)
        sobrenome = random.choice(sobrenomes_comuns)
        telefone = generate_phone_number()
        email = generate_email(nome, sobrenome)
        sexo = random.choice(['M', 'F'])
        data_nascimento = generate_date(1960, 1995)
        id_unidade = random.choice([u['idUnidade'] for u in unidades])
        endereco_rua = random.choice(ruas_comuns)
        endereco_numero = str(random.randint(1, 500))
        endereco_bairro = random.choice(bairros_comuns)
        endereco_cidade = random.choice(cidades_comuns)
        endereco_estado = random.choice(estados_comuns)
        endereco_cep = generate_cep()

        script_content.append(f"INSERT INTO Usuario VALUES ('{nome}', '{sobrenome}', '{telefone}', '{data_nascimento}', '{endereco_rua}', '{endereco_numero}', '{endereco_bairro}', '{endereco_cidade}', '{endereco_estado}', '{endereco_cep}', '{sexo}', '{email}', 'senha123');")
        script_content.append(f"INSERT INTO Professor VALUES ({id_unidade}, '{nome}', '{sobrenome}', '{telefone}', 'Formação{random.randint(1,50)}', 'Titulação{random.randint(1,50)}');")
        usuarios.append({'nome': nome, 'sobrenome': sobrenome, 'numero_de_telefone': telefone})
        professores.append({'nome': nome, 'sobrenome': sobrenome, 'numero_do_telefone': telefone, 'idUnidade': id_unidade})

    # Populando Alunos
    for i in range(1, num_alunos + 1):
        nome = random.choice(nomes_comuns)
        sobrenome = random.choice(sobrenomes_comuns)
        telefone = generate_phone_number()
        email = generate_email(nome, sobrenome)
        sexo = random.choice(['M', 'F'])
        data_nascimento = generate_date(1998, 2005)
        id_unidade = random.choice([u['idUnidade'] for u in unidades])
        endereco_rua = random.choice(ruas_comuns)
        endereco_numero = str(random.randint(1, 500))
        endereco_bairro = random.choice(bairros_comuns)
        endereco_cidade = random.choice(cidades_comuns)
        endereco_estado = random.choice(estados_comuns)
        endereco_cep = generate_cep()

        script_content.append(f"INSERT INTO Usuario VALUES ('{nome}', '{sobrenome}', '{telefone}', '{data_nascimento}', '{endereco_rua}', '{endereco_numero}', '{endereco_bairro}', '{endereco_cidade}', '{endereco_estado}', '{endereco_cep}', '{sexo}', '{email}', 'senha123');")
        script_content.append(f"INSERT INTO Aluno VALUES ({id_unidade}, '{nome}', '{sobrenome}', '{telefone}', 'regular');")
        usuarios.append({'nome': nome, 'sobrenome': sobrenome, 'numero_de_telefone': telefone})
        alunos.append({'nome': nome, 'sobrenome': sobrenome, 'numero_do_telefone': telefone, 'idUnidade': id_unidade})

    # Populando Funcionario_Administrativo
    for i in range(1, num_func_adm + 1):
        nome = random.choice(nomes_comuns)
        sobrenome = random.choice(sobrenomes_comuns)
        telefone = generate_phone_number()
        email = generate_email(nome, sobrenome)
        sexo = random.choice(['M', 'F'])
        data_nascimento = generate_date(1970, 1990)
        cargo = f'Cargo {random.randint(1,20)}'
        endereco_rua = random.choice(ruas_comuns)
        endereco_numero = str(random.randint(1, 500))
        endereco_bairro = random.choice(bairros_comuns)
        endereco_cidade = random.choice(cidades_comuns)
        endereco_estado = random.choice(estados_comuns)
        endereco_cep = generate_cep()

        script_content.append(f"INSERT INTO Usuario VALUES ('{nome}', '{sobrenome}', '{telefone}', '{data_nascimento}', '{endereco_rua}', '{endereco_numero}', '{endereco_bairro}', '{endereco_cidade}', '{endereco_estado}', '{endereco_cep}', '{sexo}', '{email}', 'senha123');")
        script_content.append(f"INSERT INTO Funcionario_Administrativo VALUES ('{nome}', '{sobrenome}', '{telefone}', '{cargo}');")
        usuarios.append({'nome': nome, 'sobrenome': sobrenome, 'numero_de_telefone': telefone})
        func_administrativos.append({'nome': nome, 'sobrenome': sobrenome, 'numero_do_telefone': telefone, 'cargo': cargo})


    # --- Departamento ---
    script_content.append("\n-- Populando Departamento")
    departamentos = []
    for i in range(1, num_departamentos + 1):
        # Garante que o chefe de departamento exista na lista de professores criados
        chefe_info = random.choice(chefe_professores_info)
        depto = {
            'codigo': f'DEP{i}',
            'nome': f'Departamento {i}',
            'chefe_departamento_nome': chefe_info['nome'],
            'chefe_departamento_sobrenome': chefe_info['sobrenome'],
            'chefe_departamento_telefone': chefe_info['numero_do_telefone']
        }
        departamentos.append(depto)
        script_content.append(f"INSERT INTO Departamento VALUES ('{depto['chefe_departamento_nome']}', '{depto['chefe_departamento_sobrenome']}', '{depto['chefe_departamento_telefone']}', '{depto['codigo']}', '{depto['nome']}');")

    # --- Curso ---
    script_content.append("\n-- Populando Curso")
    cursos = []
    niveis_ensino = ["Graduação", "Pós-Graduação", "Técnico"]
    for i in range(1, num_cursos + 1):
        curso = {
            'idUnidade': random.choice([u['idUnidade'] for u in unidades]),
            'codigo': f'CUR{i}',
            'nome': f'Curso {i}',
            'departamento': random.choice([d['codigo'] for d in departamentos]),
            'nivel_ensino': random.choice(niveis_ensino),
            'ementa': f'Ementa do curso {i}',
            'carga_horaria': random.randint(1000, 4000),
            'vagas': random.randint(30, 150)
        }
        cursos.append(curso)
        script_content.append(f"INSERT INTO Curso VALUES ({curso['idUnidade']}, '{curso['codigo']}', '{curso['nome']}', '{curso['departamento']}', '{curso['nivel_ensino']}', '{curso['ementa']}', {curso['carga_horaria']}, {curso['vagas']});")

    # --- Disciplina ---
    script_content.append("\n-- Populando Disciplina")
    disciplinas = []
    materiais_didaticos = ["Livro de Algoritmos", "Material de Circuitos", "Cálculo Avançado", "Física Moderna",
                           "Química Orgânica", "Genética", "Literatura Brasileira", "História Contemporânea",
                           "Geografia Humana", "Desenho Artístico", "Banco de Dados I", "Redes de Computadores",
                           "Eletrônica Digital", "Circuitos Elétricos", "Álgebra Linear", "Mecânica Quântica",
                           "Bioquímica", "Ecologia", "Gramática Avançada", "Arte Moderna", "Matemática Discreta",
                           "Fundamentos de Economia", "Introdução à Programação", "Psicologia Cognitiva"]
    salas_padrao = [f'Sala {s}' for s in range(101, 151)]

    for i in range(1, num_disciplinas + 1):
        responsavel = random.choice(professores)
        disciplina = {
            'idUnidade': random.choice([u['idUnidade'] for u in unidades]),
            'responsavel_nome': responsavel['nome'],
            'responsavel_sobrenome': responsavel['sobrenome'],
            'responsavel_telefone': responsavel['numero_do_telefone'],
            'num_aulas': random.choice([30, 45, 60, 90]),
            'material_didatico': random.choice(materiais_didaticos),
            'sala_padrao': random.choice(salas_padrao)
        }
        disciplinas.append(disciplina)
        script_content.append(f"INSERT INTO Disciplina VALUES ({disciplina['idUnidade']}, '{disciplina['responsavel_nome']}', '{disciplina['responsavel_sobrenome']}', '{disciplina['responsavel_telefone']}', {disciplina['num_aulas']}, '{disciplina['material_didatico']}', '{disciplina['sala_padrao']}');")

    # --- OfertaDisciplina ---
    script_content.append("\n-- Populando OfertaDisciplina")
    ofertas_disciplina = []
    for i in range(1, num_ofertas_disciplina + 1):
        disc_base = random.choice(disciplinas)
        data_inicio_str = generate_date(2023, 2025)
        data_inicio_dt = datetime.strptime(data_inicio_str, '%Y-%m-%d')
        data_fim_dt = data_inicio_dt + timedelta(days=random.randint(120, 180))
        data_fim_str = data_fim_dt.strftime('%Y-%m-%d')

        oferta = {
            'idOfertaDisciplina': i,
            'data_inicio': data_inicio_str,
            'data_fim': data_fim_str,
            'capacidade': random.randint(20, 60),
            'num_aulas': disc_base['num_aulas'],
            'material_didatico': disc_base['material_didatico'],
            'sala_padrao': disc_base['sala_padrao']
        }
        ofertas_disciplina.append(oferta)
        script_content.append(f"INSERT INTO OfertaDisciplina VALUES ({oferta['idOfertaDisciplina']}, '{oferta['data_inicio']}', '{oferta['data_fim']}', {oferta['capacidade']}, {oferta['num_aulas']}, '{oferta['material_didatico']}', '{oferta['sala_padrao']}');")

    # --- Matricula ---
    script_content.append("\n-- Populando Matricula")
    matriculas = []
    for i in range(1, num_matriculas + 1):
        aluno_matricula = random.choice(alunos)
        oferta_matricula = random.choice(ofertas_disciplina)
        data_matricula_str = generate_date(2023, 2025) # Data de matrícula
        data_limite_dt = datetime.strptime(data_matricula_str, '%Y-%m-%d') + timedelta(days=random.randint(5, 30))
        data_limite_str = data_limite_dt.strftime('%Y-%m-%d')

        matricula = {
            'idMatricula': i,
            'data_matricula': data_matricula_str,
            'notas': generate_notas(),
            'desconto': f"{random.uniform(0.00, 50.00):.2f}",
            'bolsa': random.choice([True, False]),
            'status': random.choice(['ativa', 'concluida', 'cancelada']),
            'data_limite': data_limite_str,
            'idOfertaDisciplina': oferta_matricula['idOfertaDisciplina'],
            'nome': aluno_matricula['nome'],
            'sobrenome': aluno_matricula['sobrenome'],
            'numero_de_telefone': aluno_matricula['numero_do_telefone']
        }
        matriculas.append(matricula)
        script_content.append(f"INSERT INTO Matricula VALUES ({matricula['idMatricula']}, '{matricula['data_matricula']}', {matricula['notas']}, {matricula['desconto']}, {matricula['bolsa']}, '{matricula['status']}', '{matricula['data_limite']}', {matricula['idOfertaDisciplina']}, '{matricula['nome']}', '{matricula['sobrenome']}', '{matricula['numero_de_telefone']}');")

    # --- Pagamento ---
    script_content.append("\n-- Populando Pagamento")
    for i in range(1, num_pagamentos + 1):
        matricula_pagamento = random.choice(matriculas)
        pagamento = {
            'valor': f"{random.uniform(500.00, 3000.00):.2f}",
            'idMatricula': matricula_pagamento['idMatricula']
        }
        script_content.append(f"INSERT INTO Pagamento VALUES ({pagamento['valor']}, {pagamento['idMatricula']});")

    # --- Mensagem ---
    script_content.append("\n-- Populando Mensagem")
    remetentes = [u for u in usuarios if u not in alunos and u not in func_administrativos] # Professores ou outros
    destinatarios = [u for u in usuarios if u not in professores and u not in func_administrativos] # Alunos ou outros

    for i in range(1, num_mensagens + 1):
        remetente_msg = random.choice(remetentes)
        destinatario_msg = random.choice(destinatarios)
        msg_timestamp = generate_timestamp('2023-01-01', '2025-12-31')
        mensagem_texto = f'Mensagem {i}: {random.choice(["Lembrete de aula.", "Prazo de entrega de trabalho.", "Informação sobre evento."])}'
        script_content.append(f"INSERT INTO Mensagem (destinatario_nome, destinatario_sobrenome, destinatario_numero_de_telefone, remetente_nome, remetente_sobrenome, remetente_numero_de_telefone, timestamp, texto) VALUES ('{destinatario_msg['nome']}', '{destinatario_msg['sobrenome']}', '{destinatario_msg['numero_de_telefone']}', '{remetente_msg['nome']}', '{remetente_msg['sobrenome']}', '{remetente_msg['numero_de_telefone']}', '{msg_timestamp}', '{mensagem_texto}');")

    # --- Avaliacao ---
    script_content.append("\n-- Populando Avaliacao")
    for i in range(1, num_avaliacoes + 1):
        aluno_avaliacao = random.choice(alunos)
        oferta_avaliacao = random.choice(ofertas_disciplina)
        avaliacao = {
            'comentario': f'Comentário da avaliação {i}.',
            'nota_didatica': f"{random.uniform(5.00, 10.00):.2f}",
            'nota_material': f"{random.uniform(5.00, 10.00):.2f}",
            'nota_infra': f"{random.uniform(5.00, 10.00):.2f}",
            'nome': aluno_avaliacao['nome'],
            'sobrenome': aluno_avaliacao['sobrenome'],
            'numero_de_telefone': aluno_avaliacao['numero_do_telefone'],
            'idOfertaDisciplina': oferta_avaliacao['idOfertaDisciplina']
        }
        script_content.append(f"INSERT INTO Avaliacao VALUES ('{avaliacao['comentario']}', {avaliacao['nota_didatica']}, {avaliacao['nota_material']}, {avaliacao['nota_infra']}, '{avaliacao['nome']}', '{avaliacao['sobrenome']}', '{avaliacao['numero_de_telefone']}', {avaliacao['idOfertaDisciplina']});")

    return "\n".join(script_content)

if __name__ == "__main__":
    # Ajuste os números de registros conforme necessário para o seu teste
    # num_professores=20 para teste rápido, num_professores=20000 para volume grande
    # num_alunos=20 para teste rápido, num_alunos=70000 para volume grande
    # num_matriculas=40 para teste rápido, num_matriculas=500000 para volume grande
    large_data_script = generate_sql_insert_script(
        num_professores=20000,
        num_alunos=70000,
        num_func_adm=10000,
        num_matriculas=500000,
        num_pagamentos=500000,
        num_mensagens=100000,
        num_avaliacoes=100000
    )
    with open("insert_large_synthetic_data.sql", "w", encoding="utf-8") as f:
        f.write(large_data_script)
    print("Script 'insert_large_synthetic_data.sql' gerado com sucesso!")

