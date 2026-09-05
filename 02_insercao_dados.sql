USE sistema_funcionarios;

-- 1. CARGOS
INSERT INTO cargo (cod_cargo, nome_cargo) VALUES ('C01', 'Técnico de Informática');
INSERT INTO cargo (cod_cargo, nome_cargo) VALUES ('C02', 'Contabilista');
INSERT INTO cargo (cod_cargo, nome_cargo) VALUES ('C03', 'Engenheiro Civil');
INSERT INTO cargo (cod_cargo, nome_cargo) VALUES ('C04', 'Enfermeiro');
INSERT INTO cargo (cod_cargo, nome_cargo) VALUES ('C05', 'Professor');
INSERT INTO cargo (cod_cargo, nome_cargo) VALUES ('C06', 'Motorista');
INSERT INTO cargo (cod_cargo, nome_cargo) VALUES ('C07', 'Gestor de Recursos Humanos');
INSERT INTO cargo (cod_cargo, nome_cargo) VALUES ('C08', 'Assistente Administrativo');

-- 2. FUNÇÕES
INSERT INTO funcao (cod_funcao, nome_funcao) VALUES ('F01', 'Tecnologias de Informação');
INSERT INTO funcao (cod_funcao, nome_funcao) VALUES ('F02', 'Finanças');
INSERT INTO funcao (cod_funcao, nome_funcao) VALUES ('F03', 'Engenharia');
INSERT INTO funcao (cod_funcao, nome_funcao) VALUES ('F04', 'Saúde');
INSERT INTO funcao (cod_funcao, nome_funcao) VALUES ('F05', 'Educação');
INSERT INTO funcao (cod_funcao, nome_funcao) VALUES ('F06', 'Logística');
INSERT INTO funcao (cod_funcao, nome_funcao) VALUES ('F07', 'Recursos Humanos');
INSERT INTO funcao (cod_funcao, nome_funcao) VALUES ('F08', 'Administração');

-- 3. LOCALIDADES
INSERT INTO localidade (id_localidade, cidade, provincia, pais) VALUES (1, 'Maputo', 'Maputo Cidade', 'Moçambique');
INSERT INTO localidade (id_localidade, cidade, provincia, pais) VALUES (2, 'Matola', 'Maputo Província', 'Moçambique');
INSERT INTO localidade (id_localidade, cidade, provincia, pais) VALUES (3, 'Chókwè', 'Gaza', 'Moçambique');
INSERT INTO localidade (id_localidade, cidade, provincia, pais) VALUES (4, 'Maxixe', 'Inhambane', 'Moçambique');
INSERT INTO localidade (id_localidade, cidade, provincia, pais) VALUES (5, 'Beira', 'Sofala', 'Moçambique');
INSERT INTO localidade (id_localidade, cidade, provincia, pais) VALUES (6, 'Nampula', 'Nampula', 'Moçambique');
INSERT INTO localidade (id_localidade, cidade, provincia, pais) VALUES (7, 'Chimoio', 'Manica', 'Moçambique');
INSERT INTO localidade (id_localidade, cidade, provincia, pais) VALUES (8, 'Tete', 'Tete', 'Moçambique');
INSERT INTO localidade (id_localidade, cidade, provincia, pais) VALUES (9, 'Quelimane', 'Zambézia', 'Moçambique');
INSERT INTO localidade (id_localidade, cidade, provincia, pais) VALUES (10, 'Pemba', 'Cabo Delgado', 'Moçambique');

-- 4. POSTOS DE TRABALHO
INSERT INTO posto_trabalho (id_posto, nome_posto, id_localidade) VALUES (1, 'Sede Maputo', 1);
INSERT INTO posto_trabalho (id_posto, nome_posto, id_localidade) VALUES (2, 'Delegação Matola', 2);
INSERT INTO posto_trabalho (id_posto, nome_posto, id_localidade) VALUES (3, 'Delegação Gaza', 3);
INSERT INTO posto_trabalho (id_posto, nome_posto, id_localidade) VALUES (4, 'Delegação Inhambane', 4);
INSERT INTO posto_trabalho (id_posto, nome_posto, id_localidade) VALUES (5, 'Delegação Beira', 5);
INSERT INTO posto_trabalho (id_posto, nome_posto, id_localidade) VALUES (6, 'Delegação Nampula', 6);
INSERT INTO posto_trabalho (id_posto, nome_posto, id_localidade) VALUES (7, 'Delegação Manica', 7);
INSERT INTO posto_trabalho (id_posto, nome_posto, id_localidade) VALUES (8, 'Delegação Tete', 8);
INSERT INTO posto_trabalho (id_posto, nome_posto, id_localidade) VALUES (9, 'Delegação Zambézia', 9);
INSERT INTO posto_trabalho (id_posto, nome_posto, id_localidade) VALUES (10, 'Delegação Cabo Delgado', 10);

-- 5. FUNCIONÁRIOS
INSERT INTO funcionario (id_funcionario, nuit, nome_completo, data_nascimento, bi, email, rua_avenida, numero, bairro, id_localidade, cod_cargo, cod_funcao, id_posto, data_admissao) VALUES 
(1, '100234567', 'Amélia Fernanda Cossa', '1985-03-12', '110100123456A', 'amelia.cossa@empresa.co.mz', 'Av. Julius Nyerere, n.º 245', '245', 'Sommerschield', 1, 'C01', 'F01', 1, '2015-02-05'),
(2, '100345678', 'Bernardo Alfredo Machava', '1979-07-22', '110100234567B', 'bernardo.machava@empresa.co.mz', 'Rua da Resistência, n.º 8', '8', 'Polana Caniço', 1, 'C02', 'F02', 1, '2010-09-14'),
(3, '100456789', 'Celina Armando Sitoe', '1990-11-03', '110200345678C', 'celina.sitoe@empresa.co.mz', 'Av. Samora Machel, n.º 12', '12', 'Fomento', 2, 'C08', 'F08', 2, '2018-06-01'),
(4, '100567890', 'Domingos Paulo Nhantumbo', '1982-01-30', '110300456789D', 'domingos.nhantumbo@empresa.co.mz', 'Rua 3, n.º 56', '56', 'Chókwè-Sede', 3, 'C06', 'F06', 3, '2012-03-10'),
(5, '100678901', 'Eugénia Marta Muchanga', '1988-05-18', '110400567890E', 'eugenia.muchanga@empresa.co.mz', 'Av. Eduardo Mondlane, n.º 301', '301', 'Maxixe-Sede', 4, 'C04', 'F04', 4, '2016-08-20'),
(6, '100789012', 'Fernando José Macuácua', '1975-09-25', '110500678901F', 'fernando.macuacua@empresa.co.mz', 'Av. Poder Popular, n.º 77', '77', 'Macuti', 5, 'C03', 'F03', 5, '2008-01-15'),
(7, '100890123', 'Graça Isabel Zunguze', '1992-12-07', '110600789012G', 'graca.zunguze@empresa.co.mz', 'Rua da Frescura, n.º 19', '19', 'Ponta Gêa', 5, 'C05', 'F05', 5, '2019-02-02'),
(8, '100901234', 'Hélder António Cuamba', '1980-04-14', '110700890123H', 'helder.cuamba@empresa.co.mz', 'Av. 25 de Setembro, n.º 150', '150', 'Alto Maé', 1, 'C07', 'F07', 1, '2011-11-11'),
(9, '101012345', 'Ivete Sara Chirindza', '1995-06-29', '110800901234I', 'ivete.chirindza@empresa.co.mz', 'Rua do Bagamoyo, n.º 5', '5', 'Muhipiti', 6, 'C01', 'F01', 6, '2020-07-03'),
(10, '101123456', 'João Baptista Nhaca', '1978-08-09', '110900012345J', 'joao.nhaca@empresa.co.mz', 'Av. Josina Machel, n.º 200', '200', 'Namahera', 6, 'C02', 'F02', 6, '2009-05-25'),
(11, '101234567', 'Lúcia Ermelinda Bila', '1991-02-16', '111000123456K', 'lucia.bila@empresa.co.mz', 'Rua da Base, n.º 33', '33', 'Chaimite', 5, 'C08', 'F08', 5, '2017-09-19'),
(12, '101345678', 'Marcelino Inácio Tembe', '1983-10-21', '111100234567L', 'marcelino.tembe@empresa.co.mz', 'Av. Kwame Nkrumah, n.º 410', '410', 'Coop', 1, 'C03', 'F03', 1, '2013-04-08'),
(13, '101456789', 'Noémia Alzira Massingue', '1987-03-04', '111200345678M', 'noemia.massingue@empresa.co.mz', 'Rua de Chimoio, n.º 67', '67', 'Chingussura', 7, 'C04', 'F04', 7, '2014-12-12'),
(14, '101567890', 'Osvaldo Simião Ubisse', '1976-07-27', '111300456789N', 'osvaldo.ubisse@empresa.co.mz', 'Av. 7 de Setembro, n.º 90', '90', 'Matundo', 8, 'C06', 'F06', 8, '2006-10-30'),
(15, '101678901', 'Paulina Fátima Uache', '1993-01-15', '111400567890O', 'paulina.uache@empresa.co.mz', 'Rua da Missão, n.º 24', '24', 'Chalaua', 9, 'C05', 'F05', 9, '2021-09-09'),
(16, '101789012', 'Ricardo Manuel Come', '1981-06-02', '111500678901P', 'ricardo.come@empresa.co.mz', 'Av. Franqueza, n.º 18', '18', 'Chuwaula', 10, 'C07', 'F07', 10, '2010-07-17');

-- 6. TELEFONES
INSERT INTO telefone_funcionario (id_funcionario, numero_telefone) VALUES 
(1, '841234567'), (1, '821234567'),
(2, '845678901'),
(3, '861122334'),
(4, '847890123'), (4, '878901234'),
(5, '849012345'),
(6, '823456789'), (6, '843456789'), (6, '863456789'),
(7, '844567890'), (7, '824567890'),
(8, '825678901'),
(9, '846789012'),
(10, '827890123'), (10, '847890124'),
(11, '848901234'),
(12, '829012345'), (12, '849012346'), (12, '869012347'),
(13, '841122334'),
(14, '822233445'), (14, '842233445'),
(15, '843344556'),
(16, '824455667'), (16, '844455667');

-- 7. FILHOS
INSERT INTO filho_funcionario (id_funcionario, nome_filho) VALUES 
(1, 'Cátia Cossa'),
(2, 'Nelson Machava'), (2, 'Ivete Machava'), (2, 'Suzana Machava'),
(4, 'Paulo Nhantumbo Jr'), (4, 'Alzira Nhantumbo'),
(5, 'Marta Muchanga'),
(6, 'José Macuácua'), (6, 'Beatriz Macuácua'), (6, 'Adriano Macuácua'),
(8, 'António Cuamba Jr'), (8, 'Filomena Cuamba'),
(10, 'Baptista Nhaca Jr'),
(11, 'Ermelinda Bila'),
(12, 'Inácio Tembe Jr'), (12, 'Rosa Tembe'),
(14, 'Simião Ubisse Jr'), (14, 'Alcinda Ubisse'), (14, 'Custódio Ubisse'),
(16, 'Manuel Come Jr');
