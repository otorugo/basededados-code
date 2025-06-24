-- exercicio8_completo.sql
-- Este arquivo contém as declarações CREATE VIEW para o Exercício 8.

-- Antes de executar este script, certifique-se de que a estrutura completa do banco de dados
-- e os dados (pelo menos os dados do Exercício 6) já foram inseridos.

-- 1. Visão: alunos_por_disciplina_periodo
-- Esta visão lista os alunos e as disciplinas em que estão matriculados, juntamente com o período
-- de início e fim da oferta da disciplina.
CREATE OR REPLACE VIEW alunos_por_disciplina_periodo AS
SELECT
    U.nome AS nome_aluno,
    U.sobrenome AS sobrenome_aluno,
    A.tipoAluno,
    D.material_didatico AS nome_disciplina,
    OD.data_inicio AS periodo_inicio,
    OD.data_fim AS periodo_fim,
    M.status AS status_matricula
FROM
    Matricula M
JOIN
    Aluno A ON M.nome = A.nome AND M.sobrenome = A.sobrenome AND M.numero_de_telefone = A.numero_do_telefone
JOIN
    Usuario U ON A.nome = U.nome AND A.sobrenome = U.sobrenome AND A.numero_de_telefone = U.numero_de_telefone
JOIN
    OfertaDisciplina OD ON M.idOfertaDisciplina = OD.idOfertaDisciplina
JOIN
    Disciplina D ON OD.num_aulas = D.num_aulas AND OD.material_didatico = D.material_didatico AND OD.sala_padrao = D.sala_padrao
ORDER BY
    U.nome, U.sobrenome, OD.data_inicio;

-- Exemplo de Consulta na Visão:
-- SELECT * FROM alunos_por_disciplina_periodo WHERE nome_disciplina = 'Cálculo I' LIMIT 10;


-- 2. Visão: professores_e_departamentos
-- Esta visão combina informações de professores e seus respectivos departamentos,
-- incluindo detalhes do chefe de departamento.
CREATE OR REPLACE VIEW professores_e_departamentos AS
SELECT
    U.nome AS nome_professor,
    U.sobrenome AS sobrenome_professor,
    P.area_de_formacao,
    P.area_de_titulacao,
    DEP.nome AS nome_departamento,
    DEP.chefe_departamento_nome AS nome_chefe_departamento,
    DEP.chefe_departamento_sobrenome AS sobrenome_chefe_departamento
FROM
    Professor P
JOIN
    Usuario U ON P.nome = U.nome AND P.sobrenome = U.sobrenome AND P.numero_do_telefone = U.numero_de_telefone
LEFT JOIN
    Departamento DEP ON P.nome = DEP.chefe_departamento_nome AND P.sobrenome = DEP.chefe_departamento_sobrenome AND P.numero_do_telefone = DEP.chefe_departamento_telefone
ORDER BY
    nome_departamento, nome_professor;

-- Exemplo de Consulta na Visão:
-- SELECT * FROM professores_e_departamentos WHERE nome_departamento IS NOT NULL LIMIT 10;


-- 3. Visão: desempenho_alunos_disciplinas
-- Esta visão calcula a média das notas de cada aluno em cada disciplina em que ele se matriculou.
-- Fornece uma sumarização do desempenho acadêmico.
CREATE OR REPLACE VIEW desempenho_alunos_disciplinas AS
SELECT
    U.nome AS nome_aluno,
    U.sobrenome AS sobrenome_aluno,
    D.material_didatico AS nome_disciplina,
    AVG(M.notas) AS media_notas_disciplina
FROM
    Matricula M
JOIN
    Aluno A ON M.nome = A.nome AND M.sobrenome = A.sobrenome AND M.numero_de_telefone = A.numero_do_telefone
JOIN
    Usuario U ON A.nome = U.nome AND A.sobrenome = U.sobrenome AND A.numero_de_telefone = U.numero_de_telefone
JOIN
    OfertaDisciplina OD ON M.idOfertaDisciplina = OD.idOfertaDisciplina
JOIN
    Disciplina D ON OD.num_aulas = D.num_aulas AND OD.material_didatico = D.material_didatico AND OD.sala_padrao = D.sala_padrao
GROUP BY
    U.nome, U.sobrenome, D.material_didatico
ORDER BY
    U.nome, U.sobrenome, media_notas_disciplina DESC;

-- Exemplo de Consulta na Visão:
-- SELECT * FROM desempenho_alunos_disciplinas WHERE nome_aluno = 'Ana' AND sobrenome_aluno = 'Lima' LIMIT 10;

