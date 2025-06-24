-- queries_exercicio6.sql
-- Consultas SQL significativas para demonstrar a capacidade do sistema escolar (Exercício 6).

-- 1. Listar todos os alunos matriculados em uma disciplina específica em um determinado período
-- Exemplo: Alunos matriculados em 'Banco de Dados I' no período de '2024-08-01' a '2024-12-20'.
SELECT
    U.nome AS nome_aluno,
    U.sobrenome AS sobrenome_aluno,
    D.material_didatico AS disciplina,
    OD.data_inicio AS inicio_periodo,
    OD.data_fim AS fim_periodo
FROM
    Matricula M
JOIN
    Aluno A ON M.nome = A.nome AND M.sobrenome = A.sobrenome AND M.numero_de_telefone = A.numero_do_telefone
JOIN
    Usuario U ON A.nome = U.nome AND A.sobrenome = U.sobrenome AND A.numero_do_telefone = U.numero_de_telefone
JOIN
    OfertaDisciplina OD ON M.idOfertaDisciplina = OD.idOfertaDisciplina
JOIN
    Disciplina D ON OD.num_aulas = D.num_aulas AND OD.material_didatico = D.material_didatico AND OD.sala_padrao = D.sala_padrao
WHERE
    D.material_didatico = 'Banco de Dados I' AND OD.data_inicio = '2024-08-01' AND OD.data_fim = '2024-12-20';

-- 2. Calcular a média de notas de um aluno
-- Exemplo: Média de notas do aluno 'Pedro Costa'.
SELECT
    A.nome AS nome_aluno,
    A.sobrenome AS sobrenome_aluno,
    AVG(M.notas) AS media_notas
FROM
    Aluno A
JOIN
    Matricula M ON A.nome = M.nome AND A.sobrenome = M.sobrenome AND A.numero_do_telefone = M.numero_de_telefone
WHERE
    A.nome = 'Pedro' AND A.sobrenome = 'Costa'
GROUP BY
    A.nome, A.sobrenome;

-- 3. Listar os professores de um departamento com suas respectivas disciplinas
-- Esta consulta exibe quais professores estão associados a qual departamento e quais disciplinas eles são responsáveis.
SELECT
    P.nome AS nome_professor,
    P.sobrenome AS sobrenome_professor,
    DPT.nome AS nome_departamento,
    DISC.material_didatico AS nome_disciplina
FROM
    Professor P
JOIN
    Departamento DPT ON P.nome = DPT.chefe_departamento_nome AND P.sobrenome = DPT.chefe_departamento_sobrenome AND P.numero_do_telefone = DPT.chefe_departamento_telefone
JOIN
    Disciplina DISC ON P.nome = DISC.responsavel_nome AND P.sobrenome = DISC.responsavel_sobrenome AND P.numero_do_telefone = DISC.responsavel_telefone
ORDER BY
    DPT.nome, P.nome, DISC.material_didatico;

-- 4. Encontrar cursos que não tiveram alunos matriculados no último período letivo
-- O "último período letivo" é determinado pela data de fim mais recente das ofertas de disciplina.
SELECT
    C.nome AS nome_curso
FROM
    Curso C
WHERE
    C.codigo NOT IN (
        SELECT DISTINCT
            Curso.codigo
        FROM
            Matricula M
        JOIN
            OfertaDisciplina OD ON M.idOfertaDisciplina = OD.idOfertaDisciplina
        JOIN
            Disciplina D ON OD.num_aulas = D.num_aulas AND OD.material_didatico = D.material_didatico AND OD.sala_padrao = D.sala_padrao
        JOIN
            Professor P ON D.responsavel_nome = P.nome AND D.responsavel_sobrenome = P.sobrenome AND D.responsavel_telefone = P.numero_do_telefone
        JOIN
            Departamento Dept ON P.nome = Dept.chefe_departamento_nome AND P.sobrenome = Dept.chefe_departamento_sobrenome AND P.numero_de_telefone = Dept.chefe_departamento_telefone
        JOIN
            Curso ON Dept.codigo = Curso.departamento
        WHERE
            OD.data_fim = (SELECT MAX(data_fim) FROM OfertaDisciplina)
    );

-- 5. Contar o número de alunos por curso
-- Fornece uma visão geral da popularidade de cada curso.
SELECT
    C.nome AS nome_curso,
    COUNT(DISTINCT A.nome, A.sobrenome, A.numero_do_telefone) AS total_alunos
FROM
    Curso C
LEFT JOIN
    Departamento DPT ON C.departamento = DPT.codigo
LEFT JOIN
    Professor P ON DPT.chefe_departamento_nome = P.nome AND DPT.chefe_departamento_sobrenome = P.sobrenome AND DPT.chefe_departamento_telefone = P.numero_do_telefone
LEFT JOIN
    Disciplina DISC ON P.nome = DISC.responsavel_nome AND P.sobrenome = DISC.sobrenome AND P.numero_do_telefone = DISC.responsavel_telefone
LEFT JOIN
    OfertaDisciplina OD ON DISC.num_aulas = OD.num_aulas AND DISC.material_didatico = OD.material_didatico AND DISC.sala_padrao = OD.sala_padrao
LEFT JOIN
    Matricula M ON OD.idOfertaDisciplina = M.idOfertaDisciplina
LEFT JOIN
    Aluno A ON M.nome = A.nome AND M.sobrenome = A.sobrenome AND M.numero_de_telefone = A.numero_do_telefone
GROUP BY
    C.nome
ORDER BY
    total_alunos DESC;

-- 6. Listar todos os funcionários administrativos e seus cargos
-- Recupera informações sobre a equipe administrativa da instituição.
SELECT
    U.nome,
    U.sobrenome,
    FA.cargo
FROM
    Funcionario_Administrativo FA
JOIN
    Usuario U ON FA.nome = U.nome AND FA.sobrenome = U.sobrenome AND FA.numero_do_telefone = U.numero_de_telefone
ORDER BY
    FA.cargo, U.nome;

-- 7. Encontrar as disciplinas mais bem avaliadas (média de notas de didática)
-- Identifica as disciplinas com melhor desempenho na didática, baseando-se nas avaliações dos alunos.
SELECT
    D.material_didatico AS nome_disciplina,
    AVG(A.nota_didatica) AS media_didatica
FROM
    Avaliacao A
JOIN
    OfertaDisciplina OD ON A.idOfertaDisciplina = OD.idOfertaDisciplina
JOIN
    Disciplina D ON OD.num_aulas = D.num_aulas AND OD.material_didatico = D.material_didatico AND OD.sala_padrao = D.sala_padrao
GROUP BY
    D.material_didatico
ORDER BY
    media_didatica DESC
LIMIT 5;

