-- queries_before_indexes.sql
-- Execute estas consultas *antes* de criar os índices para observar o plano de execução sem otimização.

-- Consulta A: Alunos matriculados em um determinado período e ordenados (beneficia B-tree em Matricula)
-- Esta consulta busca usuários que são alunos e que se matricularam em um período específico, ordenando os resultados.
EXPLAIN ANALYZE
SELECT
    U.nome,
    U.sobrenome,
    U.email
FROM
    Usuario U
JOIN
    Aluno A ON U.nome = A.nome AND U.sobrenome = A.sobrenome AND U.numero_de_telefone = A.numero_do_telefone
JOIN
    Matricula M ON A.nome = M.nome AND A.sobrenome = M.sobrenome AND A.numero_de_telefone = M.numero_de_telefone
WHERE
    M.data_matricula BETWEEN '2024-01-01' AND '2024-01-31'
ORDER BY
    U.nome, U.sobrenome
LIMIT 100;

-- Consulta B: Busca de usuário por email (beneficia Hash em Usuario)
-- Esta consulta busca um usuário específico pelo seu endereço de email.
EXPLAIN ANALYZE
SELECT
    U.nome,
    U.sobrenome,
    U.data_nascimento
FROM
    Usuario U
WHERE
    U.email = 'test.email@exemplo.com'; -- Email de teste, será populado no script de dados sintéticos

-- Consulta C: Busca de material didático por termo (beneficia GIN em Disciplina)
-- Esta consulta busca disciplinas cujos materiais didáticos contenham termos específicos.
EXPLAIN ANALYZE
SELECT
    D.material_didatico,
    P.nome AS responsavel_nome,
    P.sobrenome AS responsavel_sobrenome
FROM
    Disciplina D
JOIN
    Professor P ON D.responsavel_nome = P.nome AND D.responsavel_sobrenome = P.sobrenome AND D.responsavel_telefone = P.numero_de_telefone
WHERE
    to_tsvector('portuguese', D.material_didatico) @@ to_tsquery('portuguese', 'Banco & Dados'); -- Termo de busca de teste

