-- queries_after_indexes.sql
-- Execute estas consultas *após* ter criado os índices para observar o plano de execução otimizado.

-- Consulta A: Alunos matriculados em um determinado período e ordenados (beneficia B-tree em Matricula)
EXPLAIN ANALYZE
SELECT
    U.nome,
    U.sobrenome,
    U.email
FROM
    Usuario U
JOIN
    Aluno A ON U.nome = A.nome AND U.sobrenome = A.sobrenome AND U.numero_de_telefone = A.numero_de_telefone
JOIN
    Matricula M ON A.nome = M.nome AND A.sobrenome = M.sobrenome AND A.numero_de_telefone = M.numero_de_telefone
WHERE
    M.data_matricula BETWEEN '2024-01-01' AND '2024-01-31'
ORDER BY
    U.nome, U.sobrenome
LIMIT 100;

-- Consulta B: Busca de usuário por email (beneficia Hash em Usuario)
EXPLAIN ANALYZE
SELECT
    U.nome,
    U.sobrenome,
    U.data_nascimento
FROM
    Usuario U
WHERE
    U.email = 'test.email@exemplo.com';

-- Consulta C: Busca de material didático por termo (beneficia GIN em Disciplina)
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
    to_tsvector('portuguese', D.material_didatico) @@ to_tsquery('portuguese', 'Banco & Dados');

