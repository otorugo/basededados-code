-- insert_exercicio6.sql
-- Script de inserção de dados para o Exercício 6, com notas numéricas na tabela Matricula.

-- Populando Unidade
INSERT INTO Unidade (idUnidade, cidade, estado, pais, predio_bloco) VALUES (1, 'Cidade1', 'Estado1', 'Brasil', 'Bloco 1');
INSERT INTO Unidade (idUnidade, cidade, estado, pais, predio_bloco) VALUES (2, 'Cidade2', 'Estado2', 'Brasil', 'Bloco 2');

-- Populando Usuario e Professor
INSERT INTO Usuario VALUES ('Chefe1', 'Sobrenome1', '(11)90000-0001', '1975-01-01', 'Rua 34', '242', 'Bairro 3', 'CidadeX', 'SP', '66530-248', 'M', 'chefe1.sobrenome1@exemplo.com', 'senha123');
INSERT INTO Professor VALUES (1, 'Chefe1', 'Sobrenome1', '(11)90000-0001', 'Área 1', 'Titulação 1');
INSERT INTO Usuario VALUES ('Chefe2', 'Sobrenome2', '(11)90000-0002', '1975-01-01', 'Rua 38', '31', 'Bairro 10', 'CidadeX', 'SP', '50223-727', 'M', 'chefe2.sobrenome2@exemplo.com', 'senha123');
INSERT INTO Professor VALUES (1, 'Chefe2', 'Sobrenome2', '(11)90000-0002', 'Área 2', 'Titulação 2');
INSERT INTO Usuario VALUES ('Chefe3', 'Sobrenome3', '(11)90000-0003', '1975-01-01', 'Rua 9', '253', 'Bairro 10', 'CidadeX', 'SP', '81139-325', 'M', 'chefe3.sobrenome3@exemplo.com', 'senha123');
INSERT INTO Professor VALUES (2, 'Chefe3', 'Sobrenome3', '(11)90000-0003', 'Área 3', 'Titulação 3');
INSERT INTO Usuario VALUES ('Chefe4', 'Sobrenome4', '(11)90000-0004', '1975-01-01', 'Rua 11', '293', 'Bairro 5', 'CidadeX', 'SP', '20836-409', 'M', 'chefe4.sobrenome4@exemplo.com', 'senha123');
INSERT INTO Professor VALUES (1, 'Chefe4', 'Sobrenome4', '(11)90000-0004', 'Área 4', 'Titulação 4');
INSERT INTO Usuario VALUES ('Chefe5', 'Sobrenome5', '(11)90000-0005', '1975-01-01', 'Rua 3', '458', 'Bairro 3', 'CidadeX', 'SP', '98312-888', 'M', 'chefe5.sobrenome5@exemplo.com', 'senha123');
INSERT INTO Professor VALUES (1, 'Chefe5', 'Sobrenome5', '(11)90000-0005', 'Área 5', 'Titulação 5');
INSERT INTO Usuario VALUES ('Chefe6', 'Sobrenome6', '(11)90000-0006', '1975-01-01', 'Rua 19', '190', 'Bairro 3', 'CidadeX', 'SP', '80706-363', 'M', 'chefe6.sobrenome6@exemplo.com', 'senha123');
INSERT INTO Professor VALUES (2, 'Chefe6', 'Sobrenome6', '(11)90000-0006', 'Área 6', 'Titulação 6');
INSERT INTO Usuario VALUES ('Chefe7', 'Sobrenome7', '(11)90000-0007', '1975-01-01', 'Rua 37', '453', 'Bairro 1', 'CidadeX', 'SP', '94871-817', 'M', 'chefe7.sobrenome7@exemplo.com', 'senha123');
INSERT INTO Professor VALUES (2, 'Chefe7', 'Sobrenome7', '(11)90000-0007', 'Área 7', 'Titulação 7');
INSERT INTO Usuario VALUES ('Chefe8', 'Sobrenome8', '(11)90000-0008', '1975-01-01', 'Rua 56', '167', 'Bairro 9', 'CidadeX', 'SP', '78231-910', 'M', 'chefe8.sobrenome8@exemplo.com', 'senha123');
INSERT INTO Professor VALUES (1, 'Chefe8', 'Sobrenome8', '(11)90000-0008', 'Área 8', 'Titulação 8');
INSERT INTO Usuario VALUES ('Chefe9', 'Sobrenome9', '(11)90000-0009', '1975-01-01', 'Rua 89', '466', 'Bairro 5', 'CidadeX', 'SP', '95215-843', 'M', 'chefe9.sobrenome9@exemplo.com', 'senha123');
INSERT INTO Professor VALUES (1, 'Chefe9', 'Sobrenome9', '(11)90000-0009', 'Área 9', 'Titulação 9');
INSERT INTO Usuario VALUES ('Chefe10', 'Sobrenome10', '(11)90000-00010', '1975-01-01', 'Rua 54', '317', 'Bairro 1', 'CidadeX', 'SP', '87791-608', 'M', 'chefe10.sobrenome10@exemplo.com', 'senha123');
INSERT INTO Professor VALUES (1, 'Chefe10', 'Sobrenome10', '(11)90000-00010', 'Área 10', 'Titulação 10');
INSERT INTO Usuario VALUES ('Gustavo', 'Gomes', '(11)95007-1254', '1980-01-01', 'Rua 7', '339', 'Bairro 4', 'CidadeX', 'SP', '60752-664', 'M', 'gustavo.gomes@exemplo.com', 'senha123');
INSERT INTO Professor VALUES (1, 'Gustavo', 'Gomes', '(11)95007-1254', 'Formação11', 'Titulação11');
INSERT INTO Usuario VALUES ('Ana', 'Santos', '(11)96579-8782', '1980-01-01', 'Rua 72', '77', 'Bairro 6', 'CidadeX', 'SP', '58371-832', 'M', 'ana.santos@exemplo.com', 'senha123');
INSERT INTO Professor VALUES (1, 'Ana', 'Santos', '(11)96579-8782', 'Formação12', 'Titulação12');
INSERT INTO Usuario VALUES ('Beatriz', 'Oliveira', '(11)91725-1016', '1980-01-01', 'Rua 21', '9', 'Bairro 3', 'CidadeX', 'SP', '83902-190', 'M', 'beatriz.oliveira@exemplo.com', 'senha123');
INSERT INTO Professor VALUES (2, 'Beatriz', 'Oliveira', '(11)91725-1016', 'Formação13', 'Titulação13');
INSERT INTO Usuario VALUES ('Rafael', 'Pereira', '(11)92984-9413', '1980-01-01', 'Rua 87', '153', 'Bairro 2', 'CidadeX', 'SP', '12064-926', 'M', 'rafael.pereira@exemplo.com', 'senha123');
INSERT INTO Professor VALUES (2, 'Rafael', 'Pereira', '(11)92984-9413', 'Formação14', 'Titulação14');
INSERT INTO Usuario VALUES ('Luciana', 'Almeida', '(11)92107-6125', '1980-01-01', 'Rua 42', '355', 'Bairro 7', 'CidadeX', 'SP', '63308-942', 'M', 'luciana.almeida@exemplo.com', 'senha123');
INSERT INTO Professor VALUES (1, 'Luciana', 'Almeida', '(11)92107-6125', 'Formação15', 'Titulação15');
INSERT INTO Usuario VALUES ('Fernanda', 'Santos', '(11)98593-1814', '1980-01-01', 'Rua 71', '281', 'Bairro 9', 'CidadeX', 'SP', '28847-789', 'M', 'fernanda.santos@exemplo.com', 'senha123');
INSERT INTO Professor VALUES (2, 'Fernanda', 'Santos', '(11)98593-1814', 'Formação16', 'Titulação16');
INSERT INTO Usuario VALUES ('Fernanda', 'Gomes', '(11)99048-5674', '1980-01-01', 'Rua 98', '208', 'Bairro 3', 'CidadeX', 'SP', '30838-636', 'M', 'fernanda.gomes@exemplo.com', 'senha123');
INSERT INTO Professor VALUES (2, 'Fernanda', 'Gomes', '(11)99048-5674', 'Formação17', 'Titulação17');
INSERT INTO Usuario VALUES ('João', 'Ferreira', '(11)98428-3876', '1980-01-01', 'Rua 12', '402', 'Bairro 7', 'CidadeX', 'SP', '27565-469', 'M', 'joão.ferreira@exemplo.com', 'senha123');
INSERT INTO Professor VALUES (2, 'João', 'Ferreira', '(11)98428-3876', 'Formação18', 'Titulação18');
INSERT INTO Usuario VALUES ('Rafael', 'Almeida', '(11)96555-7383', '1980-01-01', 'Rua 62', '32', 'Bairro 9', 'CidadeX', 'SP', '59558-236', 'M', 'rafael.almeida@exemplo.com', 'senha123');
INSERT INTO Professor VALUES (1, 'Rafael', 'Almeida', '(11)96555-7383', 'Formação19', 'Titulação19');
INSERT INTO Usuario VALUES ('Carlos', 'Santos', '(11)98311-4580', '1980-01-01', 'Rua 74', '463', 'Bairro 9', 'CidadeX', 'SP', '75985-133', 'M', 'carlos.santos@exemplo.com', 'senha123');
INSERT INTO Professor VALUES (2, 'Carlos', 'Santos', '(11)98311-4580', 'Formação20', 'Titulação20');

-- Populando Usuario e Aluno
INSERT INTO Usuario VALUES ('Pedro', 'Costa', '(11)98048-7517', '2003-05-15', 'Rua 77', '500', 'Bairro 6', 'CidadeX', 'SP', '97122-904', 'F', 'pedro.costa@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (1, 'Pedro', 'Costa', '(11)98048-7517', 'regular');
INSERT INTO Usuario VALUES ('Carlos', 'Almeida', '(11)98919-4164', '2003-05-15', 'Rua 83', '71', 'Bairro 7', 'CidadeX', 'SP', '14335-449', 'F', 'carlos.almeida@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (1, 'Carlos', 'Almeida', '(11)98919-4164', 'regular');
INSERT INTO Usuario VALUES ('Ana', 'Costa', '(11)91125-2206', '2003-05-15', 'Rua 86', '378', 'Bairro 9', 'CidadeX', 'SP', '71606-896', 'F', 'ana.costa@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (2, 'Ana', 'Costa', '(11)91125-2206', 'regular');
INSERT INTO Usuario VALUES ('Rafael', 'Oliveira', '(11)96803-7297', '2003-05-15', 'Rua 54', '348', 'Bairro 10', 'CidadeX', 'SP', '93184-885', 'F', 'rafael.oliveira@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (2, 'Rafael', 'Oliveira', '(11)96803-7297', 'regular');
INSERT INTO Usuario VALUES ('Marina', 'Costa', '(11)94811-5687', '2003-05-15', 'Rua 20', '365', 'Bairro 1', 'CidadeX', 'SP', '86440-323', 'F', 'marina.costa@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (1, 'Marina', 'Costa', '(11)94811-5687', 'regular');
INSERT INTO Usuario VALUES ('Gustavo', 'Pereira', '(11)95726-5283', '2003-05-15', 'Rua 35', '176', 'Bairro 7', 'CidadeX', 'SP', '49357-572', 'F', 'gustavo.pereira@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (2, 'Gustavo', 'Pereira', '(11)95726-5283', 'regular');
INSERT INTO Usuario VALUES ('Carlos', 'Pereira', '(11)91920-6656', '2003-05-15', 'Rua 50', '52', 'Bairro 1', 'CidadeX', 'SP', '65907-373', 'F', 'carlos.pereira@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (2, 'Carlos', 'Pereira', '(11)91920-6656', 'regular');
INSERT INTO Usuario VALUES ('Ana', 'Souza', '(11)96248-6896', '2003-05-15', 'Rua 18', '263', 'Bairro 3', 'CidadeX', 'SP', '99094-813', 'F', 'ana.souza@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (1, 'Ana', 'Souza', '(11)96248-6896', 'regular');
INSERT INTO Usuario VALUES ('João', 'Ferreira', '(11)95954-3520', '2003-05-15', 'Rua 39', '292', 'Bairro 2', 'CidadeX', 'SP', '92858-283', 'F', 'joão.ferreira@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (1, 'João', 'Ferreira', '(11)95954-3520', 'regular');
INSERT INTO Usuario VALUES ('Gustavo', 'Ferreira', '(11)95991-9097', '2003-05-15', 'Rua 31', '471', 'Bairro 8', 'CidadeX', 'SP', '24571-453', 'F', 'gustavo.ferreira@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (2, 'Gustavo', 'Ferreira', '(11)95991-9097', 'regular');
INSERT INTO Usuario VALUES ('Marina', 'Gomes', '(11)93404-8188', '2003-05-15', 'Rua 8', '325', 'Bairro 8', 'CidadeX', 'SP', '83830-785', 'F', 'marina.gomes@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (2, 'Marina', 'Gomes', '(11)93404-8188', 'regular');
INSERT INTO Usuario VALUES ('Pedro', 'Oliveira', '(11)93374-5375', '2003-05-15', 'Rua 17', '425', 'Bairro 9', 'CidadeX', 'SP', '44974-798', 'F', 'pedro.oliveira@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (1, 'Pedro', 'Oliveira', '(11)93374-5375', 'regular');
INSERT INTO Usuario VALUES ('João', 'Silva', '(11)91569-9964', '2003-05-15', 'Rua 61', '159', 'Bairro 7', 'CidadeX', 'SP', '25540-377', 'F', 'joão.silva@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (2, 'João', 'Silva', '(11)91569-9964', 'regular');
INSERT INTO Usuario VALUES ('Luciana', 'Almeida', '(11)96876-3000', '2003-05-15', 'Rua 26', '343', 'Bairro 1', 'CidadeX', 'SP', '61539-816', 'F', 'luciana.almeida@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (1, 'Luciana', 'Almeida', '(11)96876-3000', 'regular');
INSERT INTO Usuario VALUES ('Rafael', 'Oliveira', '(11)99143-6241', '2003-05-15', 'Rua 58', '289', 'Bairro 2', 'CidadeX', 'SP', '77496-718', 'F', 'rafael.oliveira@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (2, 'Rafael', 'Oliveira', '(11)99143-6241', 'regular');
INSERT INTO Usuario VALUES ('Ana', 'Silva', '(11)96206-4848', '2003-05-15', 'Rua 69', '227', 'Bairro 7', 'CidadeX', 'SP', '36814-321', 'F', 'ana.silva@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (1, 'Ana', 'Silva', '(11)96206-4848', 'regular');
INSERT INTO Usuario VALUES ('Ana', 'Lima', '(11)95533-6572', '2003-05-15', 'Rua 83', '60', 'Bairro 4', 'CidadeX', 'SP', '19195-157', 'F', 'ana.lima@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (2, 'Ana', 'Lima', '(11)95533-6572', 'regular');
INSERT INTO Usuario VALUES ('Fernanda', 'Souza', '(11)97682-1035', '2003-05-15', 'Rua 83', '421', 'Bairro 3', 'CidadeX', 'SP', '59099-545', 'F', 'fernanda.souza@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (1, 'Fernanda', 'Souza', '(11)97682-1035', 'regular');
INSERT INTO Usuario VALUES ('João', 'Pereira', '(11)95279-9863', '2003-05-15', 'Rua 70', '373', 'Bairro 6', 'CidadeX', 'SP', '48881-496', 'F', 'joão.pereira@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (1, 'João', 'Pereira', '(11)95279-9863', 'regular');
INSERT INTO Usuario VALUES ('Beatriz', 'Oliveira', '(11)99259-6593', '2003-05-15', 'Rua 91', '343', 'Bairro 9', 'CidadeX', 'SP', '78790-970', 'F', 'beatriz.oliveira@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (2, 'Beatriz', 'Oliveira', '(11)99259-6593', 'regular');
INSERT INTO Usuario VALUES ('Fernanda', 'Ferreira', '(11)92568-1203', '2003-05-15', 'Rua 57', '487', 'Bairro 10', 'CidadeX', 'SP', '99165-893', 'F', 'fernanda.ferreira@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (2, 'Fernanda', 'Ferreira', '(11)92568-1203', 'regular');
INSERT INTO Usuario VALUES ('Fernanda', 'Santos', '(11)95174-9018', '2003-05-15', 'Rua 88', '461', 'Bairro 7', 'CidadeX', 'SP', '66383-382', 'F', 'fernanda.santos@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (1, 'Fernanda', 'Santos', '(11)95174-9018', 'regular');
INSERT INTO Usuario VALUES ('Marina', 'Costa', '(11)97643-6041', '2003-05-15', 'Rua 22', '40', 'Bairro 10', 'CidadeX', 'SP', '20795-920', 'F', 'marina.costa@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (2, 'Marina', 'Costa', '(11)97643-6041', 'regular');
INSERT INTO Usuario VALUES ('Marina', 'Lima', '(11)94120-8483', '2003-05-15', 'Rua 69', '167', 'Bairro 8', 'CidadeX', 'SP', '88421-183', 'F', 'marina.lima@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (1, 'Marina', 'Lima', '(11)94120-8483', 'regular');
INSERT INTO Usuario VALUES ('Carlos', 'Souza', '(11)94771-1427', '2003-05-15', 'Rua 90', '149', 'Bairro 3', 'CidadeX', 'SP', '97617-595', 'F', 'carlos.souza@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (1, 'Carlos', 'Souza', '(11)94771-1427', 'regular');
INSERT INTO Usuario VALUES ('Rafael', 'Santos', '(11)91107-2695', '2003-05-15', 'Rua 71', '396', 'Bairro 3', 'CidadeX', 'SP', '55173-506', 'F', 'rafael.santos@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (2, 'Rafael', 'Santos', '(11)91107-2695', 'regular');
INSERT INTO Usuario VALUES ('Pedro', 'Silva', '(11)92049-2485', '2003-05-15', 'Rua 21', '100', 'Bairro 10', 'CidadeX', 'SP', '96544-203', 'F', 'pedro.silva@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (1, 'Pedro', 'Silva', '(11)92049-2485', 'regular');
INSERT INTO Usuario VALUES ('Gustavo', 'Gomes', '(11)98980-3869', '2003-05-15', 'Rua 28', '148', 'Bairro 7', 'CidadeX', 'SP', '17815-405', 'F', 'gustavo.gomes@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (1, 'Gustavo', 'Gomes', '(11)98980-3869', 'regular');
INSERT INTO Usuario VALUES ('Rafael', 'Ferreira', '(11)92082-7992', '2003-05-15', 'Rua 87', '312', 'Bairro 2', 'CidadeX', 'SP', '40950-557', 'F', 'rafael.ferreira@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (1, 'Rafael', 'Ferreira', '(11)92082-7992', 'regular');
INSERT INTO Usuario VALUES ('Luciana', 'Silva', '(11)96877-2152', '2003-05-15', 'Rua 19', '275', 'Bairro 7', 'CidadeX', 'SP', '60073-200', 'F', 'luciana.silva@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (1, 'Luciana', 'Silva', '(11)96877-2152', 'regular');
INSERT INTO Usuario VALUES ('Fernanda', 'Souza', '(11)95866-2179', '2003-05-15', 'Rua 40', '322', 'Bairro 1', 'CidadeX', 'SP', '27085-978', 'F', 'fernanda.souza@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (2, 'Fernanda', 'Souza', '(11)95866-2179', 'regular');
INSERT INTO Usuario VALUES ('Ana', 'Oliveira', '(11)96956-5658', '2003-05-15', 'Rua 23', '201', 'Bairro 9', 'CidadeX', 'SP', '48318-928', 'F', 'ana.oliveira@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (2, 'Ana', 'Oliveira', '(11)96956-5658', 'regular');
INSERT INTO Usuario VALUES ('Carlos', 'Ferreira', '(11)92126-2915', '2003-05-15', 'Rua 39', '11', 'Bairro 4', 'CidadeX', 'SP', '84954-817', 'F', 'carlos.ferreira@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (2, 'Carlos', 'Ferreira', '(11)92126-2915', 'regular');
INSERT INTO Usuario VALUES ('Fernanda', 'Ferreira', '(11)93802-6273', '2003-05-15', 'Rua 91', '32', 'Bairro 3', 'CidadeX', 'SP', '23862-301', 'F', 'fernanda.ferreira@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (1, 'Fernanda', 'Ferreira', '(11)93802-6273', 'regular');
INSERT INTO Usuario VALUES ('Marina', 'Gomes', '(11)94773-7639', '2003-05-15', 'Rua 23', '205', 'Bairro 5', 'CidadeX', 'SP', '82940-800', 'F', 'marina.gomes@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (2, 'Marina', 'Gomes', '(11)94773-7639', 'regular');
INSERT INTO Usuario VALUES ('Pedro', 'Oliveira', '(11)96438-2814', '2003-05-15', 'Rua 42', '238', 'Bairro 7', 'CidadeX', 'SP', '28932-198', 'F', 'pedro.oliveira@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (2, 'Pedro', 'Oliveira', '(11)96438-2814', 'regular');
INSERT INTO Usuario VALUES ('Rafael', 'Oliveira', '(11)95353-8168', '2003-05-15', 'Rua 81', '27', 'Bairro 7', 'CidadeX', 'SP', '66966-169', 'F', 'rafael.oliveira@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (1, 'Rafael', 'Oliveira', '(11)95353-8168', 'regular');
INSERT INTO Usuario VALUES ('Pedro', 'Silva', '(11)99963-9195', '2003-05-15', 'Rua 5', '70', 'Bairro 6', 'CidadeX', 'SP', '92988-955', 'F', 'pedro.silva@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (2, 'Pedro', 'Silva', '(11)99963-9195', 'regular');
INSERT INTO Usuario VALUES ('Pedro', 'Silva', '(11)99463-1864', '2003-05-15', 'Rua 76', '51', 'Bairro 9', 'CidadeX', 'SP', '16150-276', 'F', 'pedro.silva@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (1, 'Pedro', 'Silva', '(11)99463-1864', 'regular');
INSERT INTO Usuario VALUES ('João', 'Lima', '(11)98976-8991', '2003-05-15', 'Rua 91', '46', 'Bairro 9', 'CidadeX', 'SP', '35988-211', 'F', 'joão.lima@exemplo.com', 'senha123');
INSERT INTO Aluno VALUES (2, 'João', 'Lima', '(11)98976-8991', 'regular');

-- Populando Funcionario_Administrativo
INSERT INTO Usuario VALUES ('Ana', 'Ferreira', '(11)97680-1216', '1995-03-21', 'Rua 49', '167', 'Bairro 8', 'CidadeX', 'SP', '29046-264', 'M', 'ana.ferreira@exemplo.com', 'senha123');
INSERT INTO Funcionario_Administrativo VALUES ('Ana', 'Ferreira', '(11)97680-1216', 'Cargo 1');
INSERT INTO Usuario VALUES ('Gustavo', 'Santos', '(11)97787-6719', '1995-03-21', 'Rua 12', '344', 'Bairro 2', 'CidadeX', 'SP', '63779-722', 'M', 'gustavo.santos@exemplo.com', 'senha123');
INSERT INTO Funcionario_Administrativo VALUES ('Gustavo', 'Santos', '(11)97787-6719', 'Cargo 2');
INSERT INTO Usuario VALUES ('Ana', 'Lima', '(11)96314-2854', '1995-03-21', 'Rua 34', '90', 'Bairro 4', 'CidadeX', 'SP', '90041-345', 'M', 'ana.lima@exemplo.com', 'senha123');
INSERT INTO Funcionario_Administrativo VALUES ('Ana', 'Lima', '(11)96314-2854', 'Cargo 3');
INSERT INTO Usuario VALUES ('Ana', 'Oliveira', '(11)97274-3683', '1995-03-21', 'Rua 12', '127', 'Bairro 6', 'CidadeX', 'SP', '41111-506', 'M', 'ana.oliveira@exemplo.com', 'senha123');
INSERT INTO Funcionario_Administrativo VALUES ('Ana', 'Oliveira', '(11)97274-3683', 'Cargo 4');
INSERT INTO Usuario VALUES ('Fernanda', 'Silva', '(11)91714-3422', '1995-03-21', 'Rua 23', '357', 'Bairro 1', 'CidadeX', 'SP', '72417-311', 'M', 'fernanda.silva@exemplo.com', 'senha123');
INSERT INTO Funcionario_Administrativo VALUES ('Fernanda', 'Silva', '(11)91714-3422', 'Cargo 5');
INSERT INTO Usuario VALUES ('Marina', 'Silva', '(11)98716-1346', '1995-03-21', 'Rua 68', '454', 'Bairro 1', 'CidadeX', 'SP', '80123-124', 'M', 'marina.silva@exemplo.com', 'senha123');
INSERT INTO Funcionario_Administrativo VALUES ('Marina', 'Silva', '(11)98716-1346', 'Cargo 6');
INSERT INTO Usuario VALUES ('João', 'Souza', '(11)98062-6030', '1995-03-21', 'Rua 14', '341', 'Bairro 8', 'CidadeX', 'SP', '62422-464', 'M', 'joão.souza@exemplo.com', 'senha123');
INSERT INTO Funcionario_Administrativo VALUES ('João', 'Souza', '(11)98062-6030', 'Cargo 7');
INSERT INTO Usuario VALUES ('Pedro', 'Santos', '(11)94693-9912', '1995-03-21', 'Rua 98', '141', 'Bairro 7', 'CidadeX', 'SP', '90080-872', 'M', 'pedro.santos@exemplo.com', 'senha123');
INSERT INTO Funcionario_Administrativo VALUES ('Pedro', 'Santos', '(11)94693-9912', 'Cargo 8');
INSERT INTO Usuario VALUES ('Gustavo', 'Lima', '(11)98028-5080', '1995-03-21', 'Rua 79', '203', 'Bairro 8', 'CidadeX', 'SP', '40618-499', 'M', 'gustavo.lima@exemplo.com', 'senha123');
INSERT INTO Funcionario_Administrativo VALUES ('Gustavo', 'Lima', '(11)98028-5080', 'Cargo 9');
INSERT INTO Usuario VALUES ('Carlos', 'Santos', '(11)92670-1365', '1995-03-21', 'Rua 97', '86', 'Bairro 4', 'CidadeX', 'SP', '52998-153', 'M', 'carlos.santos@exemplo.com', 'senha123');
INSERT INTO Funcionario_Administrativo VALUES ('Carlos', 'Santos', '(11)92670-1365', 'Cargo 10');
INSERT INTO Usuario VALUES ('Ana', 'Souza', '(11)98691-3802', '1995-03-21', 'Rua 9', '80', 'Bairro 9', 'CidadeX', 'SP', '91556-147', 'M', 'ana.souza@exemplo.com', 'senha123');
INSERT INTO Funcionario_Administrativo VALUES ('Ana', 'Souza', '(11)98691-3802', 'Cargo 11');
INSERT INTO Usuario VALUES ('João', 'Santos', '(11)94446-6019', '1995-03-21', 'Rua 9', '387', 'Bairro 9', 'CidadeX', 'SP', '18804-616', 'M', 'joão.santos@exemplo.com', 'senha123');
INSERT INTO Funcionario_Administrativo VALUES ('João', 'Santos', '(11)94446-6019', 'Cargo 12');
INSERT INTO Usuario VALUES ('Carlos', 'Lima', '(11)99000-1777', '1995-03-21', 'Rua 56', '127', 'Bairro 8', 'CidadeX', 'SP', '15081-810', 'M', 'carlos.lima@exemplo.com', 'senha123');
INSERT INTO Funcionario_Administrativo VALUES ('Carlos', 'Lima', '(11)99000-1777', 'Cargo 13');
INSERT INTO Usuario VALUES ('Beatriz', 'Santos', '(11)99344-6694', '1995-03-21', 'Rua 60', '277', 'Bairro 2', 'CidadeX', 'SP', '33622-296', 'M', 'beatriz.santos@exemplo.com', 'senha123');
INSERT INTO Funcionario_Administrativo VALUES ('Beatriz', 'Santos', '(11)99344-6694', 'Cargo 14');
INSERT INTO Usuario VALUES ('Rafael', 'Ferreira', '(11)97861-7911', '1995-03-21', 'Rua 64', '310', 'Bairro 3', 'CidadeX', 'SP', '79361-343', 'M', 'rafael.ferreira@exemplo.com', 'senha123');
INSERT INTO Funcionario_Administrativo VALUES ('Rafael', 'Ferreira', '(11)97861-7911', 'Cargo 15');
INSERT INTO Usuario VALUES ('Carlos', 'Lima', '(11)97323-9236', '1995-03-21', 'Rua 96', '214', 'Bairro 1', 'CidadeX', 'SP', '75429-158', 'M', 'carlos.lima@exemplo.com', 'senha123');
INSERT INTO Funcionario_Administrativo VALUES ('Carlos', 'Lima', '(11)97323-9236', 'Cargo 16');
INSERT INTO Usuario VALUES ('Beatriz', 'Silva', '(11)97328-4098', '1995-03-21', 'Rua 1', '218', 'Bairro 2', 'CidadeX', 'SP', '89263-819', 'M', 'beatriz.silva@exemplo.com', 'senha123');
INSERT INTO Funcionario_Administrativo VALUES ('Beatriz', 'Silva', '(11)97328-4098', 'Cargo 17');
INSERT INTO Usuario VALUES ('Ana', 'Pereira', '(11)94611-5340', '1995-03-21', 'Rua 52', '449', 'Bairro 6', 'CidadeX', 'SP', '89707-773', 'M', 'ana.pereira@exemplo.com', 'senha123');
INSERT INTO Funcionario_Administrativo VALUES ('Ana', 'Pereira', '(11)94611-5340', 'Cargo 18');
INSERT INTO Usuario VALUES ('Gustavo', 'Pereira', '(11)98013-2646', '1995-03-21', 'Rua 60', '383', 'Bairro 5', 'CidadeX', 'SP', '91806-356', 'M', 'gustavo.pereira@exemplo.com', 'senha123');
INSERT INTO Funcionario_Administrativo VALUES ('Gustavo', 'Pereira', '(11)98013-2646', 'Cargo 19');
INSERT INTO Usuario VALUES ('Luciana', 'Ferreira', '(11)96163-7865', '1995-03-21', 'Rua 1', '408', 'Bairro 10', 'CidadeX', 'SP', '43964-759', 'M', 'luciana.ferreira@exemplo.com', 'senha123');
INSERT INTO Funcionario_Administrativo VALUES ('Luciana', 'Ferreira', '(11)96163-7865', 'Cargo 20');

-- Populando Departamento
INSERT INTO Departamento VALUES ('Chefe1', 'Sobrenome1', '(11)90000-0001', 'DEP1', 'Departamento de Ciências da Computação');
INSERT INTO Departamento VALUES ('Chefe2', 'Sobrenome2', '(11)90000-0002', 'DEP2', 'Departamento de Engenharia Elétrica');
INSERT INTO Departamento VALUES ('Chefe3', 'Sobrenome3', '(11)90000-0003', 'DEP3', 'Departamento de Matemática');
INSERT INTO Departamento VALUES ('Chefe4', 'Sobrenome4', '(11)90000-0004', 'DEP4', 'Departamento de Física');
INSERT INTO Departamento VALUES ('Chefe5', 'Sobrenome5', '(11)90000-0005', 'DEP5', 'Departamento de Química');
INSERT INTO Departamento VALUES ('Chefe6', 'Sobrenome6', '(11)90000-0006', 'DEP6', 'Departamento de Biologia');
INSERT INTO Departamento VALUES ('Chefe7', 'Sobrenome7', '(11)90000-0007', 'DEP7', 'Departamento de Letras');
INSERT INTO Departamento VALUES ('Chefe8', 'Sobrenome8', '(11)90000-0008', 'DEP8', 'Departamento de História');
INSERT INTO Departamento VALUES ('Chefe9', 'Sobrenome9', '(11)90000-0009', 'DEP9', 'Departamento de Geografia');
INSERT INTO Departamento VALUES ('Chefe10', 'Sobrenome10', '(11)90000-00010', 'DEP10', 'Departamento de Artes');

-- Populando Curso
INSERT INTO Curso VALUES (1, 'CUR1', 'Ciência da Computação', 'DEP1', 'Graduação', 'Ementa do curso de CC', 3200, 100);
INSERT INTO Curso VALUES (1, 'CUR2', 'Engenharia Elétrica', 'DEP2', 'Graduação', 'Ementa do curso de EE', 3600, 80);
INSERT INTO Curso VALUES (1, 'CUR3', 'Matemática', 'DEP3', 'Graduação', 'Ementa do curso de Matemática', 2800, 70);
INSERT INTO Curso VALUES (1, 'CUR4', 'Física', 'DEP4', 'Graduação', 'Ementa do curso de Física', 2900, 60);
INSERT INTO Curso VALUES (2, 'CUR5', 'Química', 'DEP5', 'Graduação', 'Ementa do curso de Química', 3000, 50);
INSERT INTO Curso VALUES (1, 'CUR6', 'Biologia', 'DEP6', 'Graduação', 'Ementa do curso de Biologia', 2800, 75);
INSERT INTO Curso VALUES (1, 'CUR7', 'Letras', 'DEP7', 'Graduação', 'Ementa do curso de Letras', 2400, 90);
INSERT INTO Curso VALUES (1, 'CUR8', 'História', 'DEP8', 'Graduação', 'Ementa do curso de História', 2600, 65);
INSERT INTO Curso VALUES (1, 'CUR9', 'Geografia', 'DEP9', 'Graduação', 'Ementa do curso de Geografia', 2500, 55);
INSERT INTO Curso VALUES (2, 'CUR10', 'Artes Visuais', 'DEP10', 'Graduação', 'Ementa do curso de Artes Visuais', 2700, 45);

-- Populando Disciplina

INSERT INTO Disciplina VALUES (1, 'Chefe1', 'Sobrenome1', '(11)90000-0001', 60, 'Matemática Discreta', 'Sala 305');
INSERT INTO Disciplina VALUES (2, 'Chefe2', 'Sobrenome2', '(11)90000-0002', 30, 'Fundamentos de Economia', 'Sala 1101');
INSERT INTO Disciplina VALUES (1, 'Chefe1', 'Sobrenome1', '(11)90000-0001', 60, 'Livro de Algoritmos', 'Sala 101');
INSERT INTO Disciplina VALUES (2, 'Chefe2', 'Sobrenome2', '(11)90000-0002', 45, 'Material de Circuitos', 'Sala 202');
INSERT INTO Disciplina VALUES (1, 'Chefe3', 'Sobrenome3', '(11)90000-0003', 60, 'Cálculo Avançado', 'Sala 303');
INSERT INTO Disciplina VALUES (1, 'Chefe4', 'Sobrenome4', '(11)90000-0004', 30, 'Física Moderna', 'Sala 404');
INSERT INTO Disciplina VALUES (1, 'Chefe5', 'Sobrenome5', '(11)90000-0005', 45, 'Química Orgânica', 'Sala 505');
INSERT INTO Disciplina VALUES (1, 'Chefe6', 'Sobrenome6', '(11)90000-0006', 60, 'Genética', 'Sala 606');
INSERT INTO Disciplina VALUES (2, 'Chefe7', 'Sobrenome7', '(11)90000-0007', 30, 'Literatura Brasileira', 'Sala 707');
INSERT INTO Disciplina VALUES (1, 'Chefe8', 'Sobrenome8', '(11)90000-0008', 45, 'História Contemporânea', 'Sala 808');
INSERT INTO Disciplina VALUES (1, 'Chefe9', 'Sobrenome9', '(11)90000-0009', 60, 'Geografia Humana', 'Sala 909');
INSERT INTO Disciplina VALUES (2, 'Chefe10', 'Sobrenome10', '(11)90000-00010', 30, 'Desenho Artístico', 'Sala 1010');
INSERT INTO Disciplina VALUES (1, 'Gustavo', 'Gomes', '(11)95007-1254', 45, 'Banco de Dados I', 'Sala 102');
INSERT INTO Disciplina VALUES (1, 'Ana', 'Santos', '(11)96579-8782', 60, 'Redes de Computadores', 'Sala 103');
INSERT INTO Disciplina VALUES (2, 'Beatriz', 'Oliveira', '(11)91725-1016', 30, 'Eletrônica Digital', 'Sala 203');
INSERT INTO Disciplina VALUES (2, 'Rafael', 'Pereira', '(11)92984-9413', 45, 'Circuitos Elétricos', 'Sala 204');
INSERT INTO Disciplina VALUES (1, 'Luciana', 'Almeida', '(11)92107-6125', 60, 'Álgebra Linear', 'Sala 304');
INSERT INTO Disciplina VALUES (2, 'Fernanda', 'Santos', '(11)98593-1814', 30, 'Mecânica Quântica', 'Sala 405');
INSERT INTO Disciplina VALUES (2, 'Fernanda', 'Gomes', '(11)99048-5674', 45, 'Bioquímica', 'Sala 506');
INSERT INTO Disciplina VALUES (2, 'João', 'Ferreira', '(11)98428-3876', 60, 'Ecologia', 'Sala 607');
INSERT INTO Disciplina VALUES (1, 'Rafael', 'Almeida', '(11)96555-7383', 30, 'Gramática Avançada', 'Sala 708');
INSERT INTO Disciplina VALUES (2, 'Carlos', 'Santos', '(11)98311-4580', 45, 'Arte Moderna', 'Sala 1011');

-- Populando OfertaDisciplina
INSERT INTO OfertaDisciplina VALUES (1, '2024-02-01', '2024-06-30', 50, 60, 'Livro de Algoritmos', 'Sala 101');
INSERT INTO OfertaDisciplina VALUES (2, '2024-02-01', '2024-06-30', 40, 45, 'Material de Circuitos', 'Sala 202');
INSERT INTO OfertaDisciplina VALUES (3, '2024-02-01', '2024-06-30', 45, 60, 'Cálculo Avançado', 'Sala 303');
INSERT INTO OfertaDisciplina VALUES (4, '2024-02-01', '2024-06-30', 30, 30, 'Física Moderna', 'Sala 404');
INSERT INTO OfertaDisciplina VALUES (5, '2024-02-01', '2024-06-30', 35, 45, 'Química Orgânica', 'Sala 505');
INSERT INTO OfertaDisciplina VALUES (6, '2024-02-01', '2024-06-30', 55, 60, 'Genética', 'Sala 606');
INSERT INTO OfertaDisciplina VALUES (7, '2024-02-01', '2024-06-30', 40, 30, 'Literatura Brasileira', 'Sala 707');
INSERT INTO OfertaDisciplina VALUES (8, '2024-02-01', '2024-06-30', 30, 45, 'História Contemporânea', 'Sala 808');
INSERT INTO OfertaDisciplina VALUES (9, '2024-02-01', '2024-06-30', 50, 60, 'Geografia Humana', 'Sala 909');
INSERT INTO OfertaDisciplina VALUES (10, '2024-02-01', '2024-06-30', 25, 30, 'Desenho Artístico', 'Sala 1010');
INSERT INTO OfertaDisciplina VALUES (11, '2024-08-01', '2024-12-20', 50, 45, 'Banco de Dados I', 'Sala 102'); -- Novo período
INSERT INTO OfertaDisciplina VALUES (12, '2024-08-01', '2024-12-20', 40, 60, 'Redes de Computadores', 'Sala 103'); -- Novo período
INSERT INTO OfertaDisciplina VALUES (13, '2024-08-01', '2024-12-20', 45, 30, 'Eletrônica Digital', 'Sala 203'); -- Novo período
INSERT INTO OfertaDisciplina VALUES (14, '2024-08-01', '2024-12-20', 30, 45, 'Circuitos Elétricos', 'Sala 204'); -- Novo período
INSERT INTO OfertaDisciplina VALUES (15, '2024-08-01', '2024-12-20', 35, 60, 'Álgebra Linear', 'Sala 304'); -- Novo período
INSERT INTO OfertaDisciplina VALUES (16, '2024-08-01', '2024-12-20', 55, 30, 'Mecânica Quântica', 'Sala 405'); -- Novo período
INSERT INTO OfertaDisciplina VALUES (17, '2024-08-01', '2024-12-20', 40, 45, 'Bioquímica', 'Sala 506'); -- Novo período
INSERT INTO OfertaDisciplina VALUES (18, '2024-08-01', '2024-12-20', 30, 60, 'Ecologia', 'Sala 607'); -- Novo período
INSERT INTO OfertaDisciplina VALUES (19, '2024-08-01', '2024-12-20', 50, 30, 'Gramática Avançada', 'Sala 708'); -- Novo período
INSERT INTO OfertaDisciplina VALUES (20, '2024-08-01', '2024-12-20', 25, 45, 'Arte Moderna', 'Sala 1011'); -- Novo período
INSERT INTO OfertaDisciplina VALUES (21, '2024-02-01', '2024-06-30', 20, 60, 'Matemática Discreta', 'Sala 305'); -- Disciplina para curso sem matricula no ultimo periodo
INSERT INTO OfertaDisciplina VALUES (22, '2024-08-01', '2024-12-20', 20, 30, 'Fundamentos de Economia', 'Sala 1101'); -- Disciplina para curso sem matricula no ultimo periodo

-- Populando Matricula com notas numéricas
INSERT INTO Matricula VALUES (1, '2024-01-10', 8.50, 5.00, TRUE, 'ativa', '2024-01-20', 1, 'Pedro', 'Costa', '(11)98048-7517');
INSERT INTO Matricula VALUES (2, '2024-01-12', 7.00, 10.00, FALSE, 'ativa', '2024-01-22', 2, 'Carlos', 'Almeida', '(11)98919-4164');
INSERT INTO Matricula VALUES (3, '2024-01-15', 9.20, 0.00, TRUE, 'ativa', '2024-01-25', 3, 'Ana', 'Costa', '(11)91125-2206');
INSERT INTO Matricula VALUES (4, '2024-01-18', 6.80, 15.00, FALSE, 'ativa', '2024-01-28', 4, 'Rafael', 'Oliveira', '(11)96803-7297');
INSERT INTO Matricula VALUES (5, '2024-01-20', 7.50, 0.00, TRUE, 'ativa', '2024-01-30', 5, 'Marina', 'Costa', '(11)94811-5687');
INSERT INTO Matricula VALUES (6, '2024-01-22', 8.00, 5.00, FALSE, 'ativa', '2024-02-01', 6, 'Gustavo', 'Pereira', '(11)95726-5283');
INSERT INTO Matricula VALUES (7, '2024-01-25', 9.50, 0.00, TRUE, 'ativa', '2024-02-04', 7, 'Carlos', 'Pereira', '(11)91920-6656');
INSERT INTO Matricula VALUES (8, '2024-01-28', 6.00, 10.00, FALSE, 'ativa', '2024-02-07', 8, 'Ana', 'Souza', '(11)96248-6896');
INSERT INTO Matricula VALUES (9, '2024-01-30', 8.80, 0.00, TRUE, 'ativa', '2024-02-09', 9, 'João', 'Ferreira', '(11)95954-3520');
INSERT INTO Matricula VALUES (10, '2024-02-01', 7.20, 5.00, FALSE, 'ativa', '2024-02-11', 10, 'Gustavo', 'Ferreira', '(11)95991-9097');
INSERT INTO Matricula VALUES (11, '2024-02-03', 8.10, 0.00, TRUE, 'ativa', '2024-02-13', 11, 'Marina', 'Gomes', '(11)93404-8188');
INSERT INTO Matricula VALUES (12, '2024-02-05', 7.90, 10.00, FALSE, 'ativa', '2024-02-15', 12, 'Pedro', 'Oliveira', '(11)93374-5375');
INSERT INTO Matricula VALUES (13, '2024-02-08', 9.00, 0.00, TRUE, 'ativa', '2024-02-18', 13, 'João', 'Silva', '(11)91569-9964');
INSERT INTO Matricula VALUES (14, '2024-02-10', 6.50, 15.00, FALSE, 'ativa', '2024-02-20', 14, 'Luciana', 'Almeida', '(11)96876-3000');
INSERT INTO Matricula VALUES (15, '2024-02-12', 7.80, 0.00, TRUE, 'ativa', '2024-02-22', 15, 'Rafael', 'Oliveira', '(11)99143-6241');
INSERT INTO Matricula VALUES (16, '2024-02-15', 8.30, 5.00, FALSE, 'ativa', '2024-02-25', 16, 'Ana', 'Silva', '(11)96206-4848');
INSERT INTO Matricula VALUES (17, '2024-02-18', 9.10, 0.00, TRUE, 'ativa', '2024-02-28', 17, 'Ana', 'Lima', '(11)95533-6572');
INSERT INTO Matricula VALUES (18, '2024-02-20', 7.70, 10.00, FALSE, 'ativa', '2024-03-01', 18, 'Fernanda', 'Souza', '(11)97682-1035');
INSERT INTO Matricula VALUES (19, '2024-02-22', 8.60, 0.00, TRUE, 'ativa', '2024-03-03', 19, 'João', 'Pereira', '(11)95279-9863');
INSERT INTO Matricula VALUES (20, '2024-02-25', 6.90, 5.00, FALSE, 'ativa', '2024-03-06', 20, 'Beatriz', 'Oliveira', '(11)99259-6593');

-- Populando Pagamento
INSERT INTO Pagamento VALUES (1500.00, 1);
INSERT INTO Pagamento VALUES (1200.00, 2);
INSERT INTO Pagamento VALUES (1800.00, 3);
INSERT INTO Pagamento VALUES (1000.00, 4);
INSERT INTO Pagamento VALUES (1350.00, 5);
INSERT INTO Pagamento VALUES (1600.00, 6);
INSERT INTO Pagamento VALUES (1900.00, 7);
INSERT INTO Pagamento VALUES (950.00, 8);
INSERT INTO Pagamento VALUES (1750.00, 9);
INSERT INTO Pagamento VALUES (1100.00, 10);

-- Populando Mensagem (exemplo)
INSERT INTO Mensagem (destinatario_nome, destinatario_sobrenome, destinatario_numero_de_telefone, remetente_nome, remetente_sobrenome, remetente_numero_de_telefone, timestamp, texto)
VALUES ('Pedro', 'Costa', '(11)98048-7517', 'Chefe1', 'Sobrenome1', '(11)90000-0001', '2024-03-01 10:00:00', 'Bem-vindo à disciplina!');
INSERT INTO Mensagem (destinatario_nome, destinatario_sobrenome, destinatario_numero_de_telefone, remetente_nome, remetente_sobrenome, remetente_numero_de_telefone, timestamp, texto)
VALUES ('Carlos', 'Almeida', '(11)98919-4164', 'Ana', 'Ferreira', '(11)97680-1216', '2024-03-02 11:30:00', 'Lembrete sobre o pagamento da mensalidade.');

-- Populando Avaliacao
INSERT INTO Avaliacao VALUES ('Ótimo professor!', 9.50, 8.70, 9.00, 'Pedro', 'Costa', '(11)98048-7517', 1);
INSERT INTO Avaliacao VALUES ('Material didático poderia ser melhor.', 7.00, 6.50, 8.00, 'Carlos', 'Almeida', '(11)98919-4164', 2);
INSERT INTO Avaliacao VALUES ('Excelente didática, aulas muito claras.', 9.80, 9.50, 9.20, 'Ana', 'Costa', '(11)91125-2206', 3);
INSERT INTO Avaliacao VALUES ('Infraestrutura da sala é um problema.', 7.50, 7.00, 5.00, 'Rafael', 'Oliveira', '(11)96803-7297', 4);
INSERT INTO Avaliacao VALUES ('Professor muito atencioso.', 8.00, 8.00, 8.50, 'Marina', 'Costa', '(11)94811-5687', 5);
INSERT INTO Avaliacao VALUES ('Aulas dinâmicas e interessantes.', 9.00, 8.50, 8.80, 'Gustavo', 'Pereira', '(11)95726-5283', 6);
INSERT INTO Avaliacao VALUES ('Bom material, mas a didática não me agradou tanto.', 7.20, 8.00, 7.50, 'Carlos', 'Pereira', '(11)91920-6656', 7);
INSERT INTO Avaliacao VALUES ('Ótima disciplina no geral.', 8.90, 9.00, 9.10, 'Ana', 'Souza', '(11)96248-6896', 8);
INSERT INTO Avaliacao VALUES ('Poderia ter mais exemplos práticos.', 8.00, 7.50, 8.00, 'João', 'Ferreira', '(11)95954-3520', 9);
INSERT INTO Avaliacao VALUES ('Infraestrutura ok, mas o material é um pouco datado.', 7.00, 6.00, 7.00, 'Gustavo', 'Ferreira', '(11)95991-9097', 10);
INSERT INTO Avaliacao VALUES ('Professor muito bom e claro nas explicações.', 9.30, 8.90, 9.00, 'Marina', 'Gomes', '(11)93404-8188', 11);
INSERT INTO Avaliacao VALUES ('Gostei do conteúdo, mas o ritmo é muito rápido.', 7.80, 7.50, 7.70, 'Pedro', 'Oliveira', '(11)93374-5375', 12);
INSERT INTO Avaliacao VALUES ('Excelente didática e material atualizado.', 9.60, 9.40, 9.50, 'João', 'Silva', '(11)91569-9964', 13);
INSERT INTO Avaliacao VALUES ('Aulas interativas e muito proveitosas.', 8.70, 8.80, 8.90, 'Luciana', 'Almeida', '(11)96876-3000', 14);
INSERT INTO Avaliacao VALUES ('Professor com muito conhecimento na área.', 9.00, 8.50, 8.70, 'Rafael', 'Oliveira', '(11)99143-6241', 15);
INSERT INTO Avaliacao VALUES ('Material bom, didática mediana.', 7.50, 8.00, 7.80, 'Ana', 'Silva', '(11)96206-4848', 16);
INSERT INTO Avaliacao VALUES ('Ótimas discussões em sala.', 8.90, 8.70, 8.90, 'Ana', 'Lima', '(11)95533-6572', 17);
INSERT INTO Avaliacao VALUES ('A infraestrutura é excelente, mas o professor não é tão bom.', 6.50, 7.00, 9.00, 'Fernanda', 'Souza', '(11)97682-1035', 18);
INSERT INTO Avaliacao VALUES ('Didática e material muito alinhados.', 9.20, 9.10, 9.00, 'João', 'Pereira', '(11)95279-9863', 19);
INSERT INTO Avaliacao VALUES ('As notas da disciplina não refletem o aprendizado.', 7.00, 7.50, 7.00, 'Beatriz', 'Oliveira', '(11)99259-6593', 20);

