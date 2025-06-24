-- create_indexes.sql
-- Este script cria índices para otimizar o desempenho de consultas comuns.

-- Índice 1: Índice B-tree composto em Matricula (nome, sobrenome, numero_de_telefone)
-- Justificativa: Este índice composto cobre a chave estrangeira que liga Matricula a Aluno (e indiretamente a Usuario).
-- Consultas que unem essas tabelas ou filtram por nome/telefone do aluno serão significativamente beneficiadas,
-- pois os dados podem ser acessados diretamente via índice. Também suporta ordenação por essas colunas.
CREATE INDEX idx_matricula_aluno ON Matricula USING BTREE (nome, sobrenome, numero_de_telefone);

-- Índice 2: Índice Hash em Usuario (email)
-- Justificativa: Índices Hash são otimizados para comparações de igualdade (=).
-- A coluna 'email' em Usuario é frequentemente utilizada para login ou buscas diretas, tornando-a uma boa candidata para um índice Hash.
-- Nota: Índices Hash não suportam consultas de intervalo ou ordenação.
CREATE INDEX idx_usuario_email_hash ON Usuario USING HASH (email);

-- Índice 3: Índice GIN em Disciplina.material_didatico para busca de texto completo
-- Justificativa: Este índice GIN é para busca de texto completo na coluna 'material_didatico'.
-- GIN (Generalized Inverted Index) é ideal para indexar tipos de dados que contêm múltiplos valores (como palavras em um campo de texto)
-- e para consultas de busca complexas usando operadores como '@@' (correspondência) com to_tsquery.
-- Isso acelera drasticamente as buscas por palavras-chave dentro do material da disciplina.
-- Requer a configuração de busca de texto completo nativa do PostgreSQL.
CREATE INDEX idx_disciplina_material_fts ON Disciplina USING GIN (to_tsvector('portuguese', material_didatico));

