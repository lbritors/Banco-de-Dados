
#https://github.com/lbritors/Banco-de-Dados/blob/144493bf592a0e428fcf5ecc5bc52990d1df8e41/TRABALHO/aLojaMaisDoce.2.sql
#https://github.com/lbritors/Banco-de-Dados/blob/main/TRABALHO/aLojaMaisDoce.2.sql
DROP TABLE IF EXISTS COZINHEIRO_FAZ_TORTA, FUNCIONARIO_ORGANIZA_ESTOQUE,
INGREDIENTE, ITEM_DECORATIVO, ESTOQUE_DECOR, ESTOQUE_ING, ESTOQUE, TORTA,
PEDIDO, COZINHEIRO, ATENDENTE, ENTREGADOR, FUNCIONARIO, CLIENTE;
CREATE TABLE CLIENTE (
ID_Cliente INTEGER,
nome VARCHAR(80),
endereco VARCHAR (80),
CPF CHAR(11),
PRIMARY KEY (ID_Cliente)
);

CREATE TABLE FUNCIONARIO (
ID_Funcionario INTEGER,
CPF VARCHAR (80),
nome VARCHAR (100),
PRIMARY KEY (ID_Funcionario)
);
CREATE TABLE ATENDENTE (
ID_FuncionarioAt INTEGER,
salario_hora DECIMAL,
turno VARCHAR (15),
telefone VARCHAR(10),
FOREIGN KEY (ID_FuncionarioAt) REFERENCES FUNCIONARIO (ID_Funcionario),
PRIMARY KEY (ID_FuncionarioAt)
);
CREATE TABLE ENTREGADOR (
ID_FuncionarioEnt INTEGER,
FOREIGN KEY (ID_FuncionarioEnt) REFERENCES FUNCIONARIO (ID_Funcionario) ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (ID_FuncionarioEnt),
salario_entrega INTEGER,
turno VARCHAR (15),
telefone VARCHAR (10),
dia VARCHAR (20)
);
CREATE TABLE COZINHEIRO (
ID_Funcionario INTEGER,
FOREIGN KEY (ID_Funcionario) REFERENCES FUNCIONARIO (ID_Funcionario) ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (ID_Funcionario),
salario INTEGER,
nivel VARCHAR (50),
bonificacao INTEGER
);

CREATE TABLE PEDIDO (
ID_Pedido INTEGER AUTO_INCREMENT,
data_pedido date,
descricao VARCHAR(100),
peso DECIMAL,
ID_FuncionarioEnt INTEGER,
ID_FuncionarioAt INTEGER,
ID_Cliente INTEGER,
PRIMARY KEY (ID_Pedido),
FOREIGN KEY (ID_FuncionarioAt) REFERENCES ATENDENTE(ID_FuncionarioAt),
FOREIGN KEY (ID_FuncionarioEnt) REFERENCES ENTREGADOR(ID_FuncionarioEnt),
FOREIGN KEY (ID_Cliente) REFERENCES CLIENTE(ID_Cliente)
);
CREATE TABLE TORTA (
ID_Torta INTEGER,
sabor VARCHAR (80),
preco_500gr DECIMAL,
ID_Pedido INTEGER,
PRIMARY KEY (ID_Torta),
FOREIGN KEY (ID_Pedido) REFERENCES PEDIDO (ID_Pedido)
);

CREATE TABLE ESTOQUE (
data_verificacao DATE,
categoria VARCHAR(100),
item INTEGER,
PRIMARY KEY (item)
);

CREATE TABLE ESTOQUE_ING(
Estoque_ing INTEGER,
quilos DECIMAL,
PRIMARY KEY (Estoque_ing),
FOREIGN KEY (Estoque_ing) REFERENCES ESTOQUE (item) ON UPDATE CASCADE ON DELETE CASCADE
); 
CREATE TABLE ESTOQUE_DECOR(
Estoque_decor INTEGER,
quantidade_pacotes INTEGER,
PRIMARY KEY (Estoque_decor),
FOREIGN KEY (Estoque_decor) REFERENCES ESTOQUE (item) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE ITEM_DECORATIVO (
ID_ItemDecor INTEGER AUTO_INCREMENT,
preco INTEGER,
nome VARCHAR (80),
ID_Torta INTEGER,
PRIMARY KEY (ID_ItemDecor),
FOREIGN KEY (ID_Torta) REFERENCES TORTA (ID_Torta),
FOREIGN KEY (ID_ItemDecor) REFERENCES ESTOQUE (item)
);

CREATE TABLE INGREDIENTE (
ID_Ingrediente INTEGER AUTO_INCREMENT,
nome VARCHAR (80),
preco INTEGER,
PRIMARY KEY (ID_Ingrediente),
ID_Torta INTEGER,
FOREIGN KEY (ID_Torta) REFERENCES TORTA (ID_Torta),
FOREIGN KEY (ID_Ingrediente) REFERENCES ESTOQUE (item)
);

 
CREATE TABLE COZINHEIRO_FAZ_TORTA(
ID_FuncionarioResp INTEGER,
ID_Torta INTEGER,
data_finalizacao DATE,
PRIMARY KEY (ID_FuncionarioResp, ID_Torta),
FOREIGN KEY (ID_FuncionarioResp) REFERENCES COZINHEIRO (ID_Funcionario),
FOREIGN KEY (ID_Torta) REFERENCES TORTA (ID_Torta)
);

#https://github.com/lbritors/Banco-de-Dados/blob/main/TRABALHO/aLojaMaisDoceInsert.sql

INSERT INTO CLIENTE (ID_Cliente, nome, endereco, CPF) VALUES 
 (1, 'Vin Dieselly', '67 Farmco Drive', '77786366534'), 
 (2, 'Elenore Mendes', '3 Ridge Oak Alley', '89724277556'),
 (3, 'Reinold Soares', '08307 Waxwing Alley', '55270515443'),
 (4, 'Benetta Santos', '983 Fordem Drive', '24214751811'),
 (5, 'Zack Perez', '877 Mockingbird Place', '81161585100'),
 (6, 'Vera Brito', '254 Novick Way', '68501225586'),
 (7, 'Everaldo Smales', '982 Lillian Drive', '54196819839'),
 (8, 'Josefina Dudley', '99 Monterey Drive', '40389617609'),
 (9, 'Herculie Ancketill', '08131 Marquette Junction', '42947106777'),
 (10, 'Toddy Blackbrough', '3 Miller Street', '41803383238');
 
 INSERT INTO FUNCIONARIO (ID_Funcionario, nome, CPF) VALUES 
(901, 'Nicole Stot', '32249099969'), (902, 'Kendra Mell', '83136885117'),
(903, 'Nisse Hardey', '22678986881'),(904, 'Terri Leale', '57657006128'),
(905, 'Inglis MacCart', '33972009839'),(906, 'Fredek Chestnutt', '27096238719'),
(907, 'Arda Lucchi', '86543999766'),(908, 'Dorthy Mays', '25799922201'),
(909, 'Cosimo Crosseland', '16014438289'),(910, 'Ingemar Sanchiz', '14394681989'),
(911, 'Theodosia Goundrill', '27100369403'),(912, 'Dorette Finch', '51506093097'),
(913, 'Ranique Lobb', '11046889761'),(914, 'Tracey Crowche', '89943091487'),
(915, 'Daloris Frame', '73876651582'),(916, 'Gilli Balnave', '21692565273'),
(917, 'Sidonnie Hassan', '69738563844'),(918, 'Wynnie Greneham', '71445651428'),
(919, 'Sibyl Errichi', '11418451206'),(920, 'Magdalene Coppins', '35491340564'),
(921, 'Hedvige Jopson', '89035392460'),(922, 'Dalt Barstow', '18265221171'),
(923, 'Zsa zsa Kellet', '35225655685'),(924, 'Asher Deddum', '67743277971'),
(925, 'York Boner', '23157763721'),(926, 'Siobhan Tavner', '48650763656'),
(927, 'Adelaida Semour', '65999343129'),(928, 'Garrott Smeath', '48970763521'),
(929, 'Vivienne Emanulsson', '85785659699'),(930, 'Timmy Levitt', '51065658901'),
(931, 'Eveleen Pumfrey', '60280761632'),(932, 'Inez Letch', '43287575632'),
(933, 'Keefer Lyptratt', '29384875908'),(934, 'Yancey Oki', '56505872435');
 
 INSERT INTO ATENDENTE (ID_FuncionarioAt, salario_hora, turno, telefone) VALUES 
(901, 18.75, 'Manhã', '985837428'), (902, 18.75, 'Manhã', '986885117'),
(903, 18.75, 'Manhã','982260881'),(904, 17.00, 'Tarde', '985785078'),
(905, 17.00, 'Tarde', '983372939'),(906, 17.00, 'Tarde', '982062379'),
(907, 17.00, 'Tarde', '986599600'),(908, 19.00,  'Noite', '982592087'),
(909, 19.00, 'Noite', '981603822'),(910, 19.00, 'Noite', '981369219');
 
 INSERT INTO COZINHEIRO (ID_Funcionario, salario, nivel, bonificacao) VALUES
(917, 2000, 'Assistente', 200), (924, 2000, 'Assistente', 200),
(925, 2000, 'Assistente', 200),(926, 2000,'Assistente', 200),
(921, 2000,'Assistente', 200), (934, 1200, 'Aprendiz Assistente', 150),
(929, 5000, 'Chef', 400),(930, 4000, 'Sub-Chef', 300),
(911, 1200, 'Aprendiz Assistente', 150), (914, 2000, 'Assistente', 200);

INSERT INTO ENTREGADOR (ID_FuncionarioEnt, salario_entrega, turno, dia, telefone) VALUES
(931, 10, 'Manhã', 'Segunda','986006632'),(932, 10, 'Manhã', 'Sexta', '983256320'),
(933, 10, 'Tarde', 'Terça', '982938580'), (912, 10,'Manhã', 'Quarta','985109391'),
(913, 10,'Manhã', 'Terça','981168762'), (915, 10, 'Tarde', 'Segunda','987651592'),
(916, 13, 'Noite', 'Segunda', '982625273'), (918, 13, 'Noite', 'Terça','987165493'),
(919, 10, 'Tarde', 'Quarta','981819651'),(920, 13, 'Noite', 'Quinta','983940647');
 
 INSERT INTO PEDIDO (ID_Pedido, data_pedido, descricao, peso, ID_FuncionarioAt, ID_Cliente, ID_FuncionarioEnt) VALUES 
(201, '2021-08-21', 'Torta de Banoffee de Chocolate', 1.5, 901, 1, 919),
(202, '2022-01-06', 'Torta de Limão', 2.0, 902, 2, 913),
(203, '2022-01-21', 'Torta de Tres Leches com Geléia de Morango', 2.5, 903, 3, 931),
(204, '2021-11-30', 'Torta de Limão', 1.0, 904, 4, 920),
(205, '2021-10-18', 'Torta de Brigadeiro com Morango', 3.0, 905, 5, 918),
(206, '2022-04-04', 'Torta de Maçã', 2.5, 906, 6, 933),
(207, '2021-10-27', 'Torta de Brigadeiro com Creme de Avelã', 1.5, 907, 7, 915),
(208, '2022-01-15', 'Cheesecake de Frutas Vermelhas ', 1.5, 908, 8, 931),
(209, '2022-02-15', 'Torta de Maçã', 2.0, 909, 9, 913),
(210, '2021-10-16', 'Torta de Banoffee de Chocolate', 1.0, 910, 10, 920);

INSERT INTO TORTA (ID_Torta, sabor, preco_500gr, ID_Pedido) VALUES 
(101, 'Banoffee de Chocolate', 33, 201),
(102, 'Banana Integral', 28, 202 ),
(103, 'Brigadeiro com Morango', 29.90, 205),
(104, 'Suflair', 27.90, 210),
(105, 'Cheesecake de Frutas Vermelhas', 34, 208),
(106, 'Brigadeiro com Creme de Avelã', 30.90, 207),
(107, 'Limão', 26.90, 204),
(108, 'Tres Leches com Geléia de Morango', 27, 203),
(109, 'Torta Holandesa', 30, 209),
(110, 'Maçã', 31, 206);

INSERT INTO ESTOQUE (item, data_verificacao, categoria) VALUES 
(401, '2022-04-22', 'Decoração'),
(402, '2022-04-22', 'Decoração'),
(403, '2022-04-22', 'Decoração'),
(404, '2022-02-13', 'Decoração'),
(405, '2022-02-13', 'Decoração'),
(406,  '2022-02-13', 'Decoração'),
(407, '2022-03-05', 'Decoração'),
(408, '2022-03-05', 'Decoração'),
(409,  '2022-03-05', 'Decoração'),
(410, '2022-03-05', 'Decoração'), 
(411, '2022-01-14', 'Decoração'),
(412, '2022-01-14', 'Decoração'),
(413, '2022-01-14', 'Decoração'),
(001, '2022-04-22', 'Ingrediente'),
(002, '2022-04-22', 'Ingrediente'),
(003, '2022-04-22', 'Ingrediente'),
(004, '2022-04-22', 'Ingrediente'),
(005, '2022-01-14', 'Ingrediente'),
(006, '2022-02-13', 'Ingrediente'),
(007, '2022-02-13', 'Ingrediente'),
(008, '2022-01-14', 'Ingrediente'),
(009, '2022-02-13', 'Ingrediente'),
(010, '2022-01-14', 'Ingrediente'),
(011, '2022-01-14', 'Ingrediente'),
(012, '2022-01-14', 'Ingrediente'),
(013, '2022-02-13', 'Ingrediente'),
(014, '2022-03-05', 'Ingrediente'),
(015, '2022-02-13', 'Ingrediente'),
(016, '2022-01-14', 'Ingrediente'),
(017, '2022-03-05', 'Ingrediente'),
(018, '2022-03-05', 'Ingrediente'),
(019, '2022-03-05', 'Ingrediente'),
(020, '2022-03-05', 'Ingrediente'),
(021, '2022-03-05', 'Ingrediente'),
(022, '2022-04-22', 'Ingrediente');
 

INSERT INTO INGREDIENTE (ID_Ingrediente, nome, preco, ID_Torta) VALUES 
(001, 'Farinha de Trigo_kg', 8.00, 110),
(002, 'Farinha de Trigo Integral_kg', 9.00, 102),
(003, 'Leite_litro', 8.00,  108),
(004, 'Chocolate_barra',  10.00,  104),
(005, 'Açúcar_kg', 7.99,  110),
(006, 'Banana_kg', 5.00, 102),
(007, 'Maçã', 6.00,  110),
(008, 'Leite em pó lata', 24.00,  108),
(009, 'Limão', 8.00,  107),
(010, 'Fermento seco',  9.00, 102),
(011, 'Fermento fresco', 10.00, 110),
(012, 'Óleo', 9.00,  105),
(013, 'Ovo_30', 18.00,  107),
(014, 'Acúcar de Confeiteiro_kg', 15.00,  110),
(015, 'Biscoito Maizena', 8.00,  104),
(016, 'Cacau_gr',  10.00,  106),
(017, 'Leite Condensado_l', 7.99, 106),
(018, 'Creme de Leite', 5.00, 109),
(019, 'Morango', 6.00, 103),
(020, 'Sal_kg', 6.00, 102),
(021, 'Baunilha', 15.00, 110),
(022, 'Canela', 8.00, 101);

INSERT INTO ITEM_DECORATIVO (ID_ItemDecor, nome, preco, ID_Torta) VALUES 
(401, 'Vela',  10.00, 106),
(402, 'Gelatina', 5.00, 109),
(403, 'Corante',  8.00,  110),
(404, 'Pasta Americana', 12.00, 103),
(405, 'Fita',  5.00, 108),
(406, 'Flor',  5.00, 110),
(407, 'Flor artificial', 4.00, 104),
(408, 'Palito_balão', 5.00, 104),
(409, 'Balão',  8.00, 109),
(410, 'Granulado', 6.00, 101),
(411, 'Confete', 6.00, 105),
(412, 'Papel de Arroz',  5.00, 107);


INSERT INTO COZINHEIRO_FAZ_TORTA (ID_FuncionarioResp, ID_Torta, data_finalizacao) VALUES
(926, 110, '2021-12-01'), (929, 107, '2022-08-22'), (917, 108, '2021-10-19'), (914,102, '2022-04-06'), 
(921, 106, '2022-01-07'), (930, 105, '2022-02-01'), (911, 106, '2021-10-18'), (930, 101, '2022-01-16'), 
(924, 101, '2021-10-29'), (917, 107, '2022-02-16');


 INSERT INTO ESTOQUE_ING (Estoque_ing, quilos) VALUES 
(001, 60),
(002, 30),
(003, 25),
(004, 18),
(005, 25),
(006, 12),
(007, 10),
(008, 12),
(009, 6),
(010, 5),
(011, 7.5),
(012, 10),
(013, 9),
(014, 15),
(015, 7),
(016, 8),
(017, 13),
(018, 4.5),
(019, 2.6),
(020, 5),
(021, 0.78),
(022, 0.3);
 
 INSERT INTO ESTOQUE_DECOR(Estoque_Decor, quantidade_pacotes) VALUES 
(401,  24),
(402, 14),
(403, 9),
(404, 22),
(405, 27),
(406,  10),
(407, 18),
(408, 40),
(409,  64),
(410, 8), 
(411, 14),
(412, 10);

#(1)Encontre o ID de todos os atendentes que trabalham no período noturno e que ganham mais que algum atendente.
SELECT A.ID_FuncionarioAt
FROM ATENDENTE A
WHERE A.turno = 'Noite' AND A.salario_hora > 
ANY 
(SELECT A2.salario_hora
FROM ATENDENTE A2);

#(2)Encontre o nome dos entregadores que entregaram Torta de Maçã.
SELECT F.nome
FROM FUNCIONARIO F
WHERE EXISTS (SELECT * 
FROM PEDIDO P
WHERE P.descricao = 'Torta de Maçã' AND P.ID_FuncionarioEnt = F.ID_Funcionario);

#(3)Encontre o nome dos funcionarios que não cozinham, não atendem e não entregam
SELECT F.nome
FROM FUNCIONARIO F 
WHERE  F.ID_Funcionario NOT IN
(SELECT E.ID_FuncionarioEnt
FROM ENTREGADOR E 
WHERE F.ID_Funcionario) AND F.ID_Funcionario NOT IN (SELECT CO.ID_Funcionario
										FROM COZINHEIRO CO
                                        WHERE F.ID_Funcionario) AND ID_Funcionario NOT IN (SELECT A.ID_FuncionarioAt
                                        FROM ATENDENTE A);
				
#(4)Encontre o nome do entregador que trabalha na segunda e ganha mais de 10 reais
SELECT nome 
FROM FUNCIONARIO F, ENTREGADOR E
WHERE E.turno = 'Noite' AND E.ID_FuncionarioEnt = F.ID_Funcionario AND E.salario_entrega > 10;

#(5)Encontre o endereço e nome do cliente que realizou o pedido de número 208 e a descrição do pedido
SELECT C.endereco, C.nome, P.descricao
FROM CLIENTE C, PEDIDO P
WHERE C.ID_Cliente = P.ID_Cliente AND P.ID_Pedido = 208;

#(6)Encontre o item decorativo que possui a menor quantidade de pacotes no estoque
SELECT ED.Estoque_decor
FROM ESTOQUE_DECOR ED
WHERE ED.quantidade_pacotes <= ALL 
(SELECT ED2.quantidade_pacotes
FROM ESTOQUE_DECOR ED2);

#(7)Encontre o nome dos entregadores que trabalham na Terça ou na Quinta
SELECT F.nome
FROM ENTREGADOR E, FUNCIONARIO F
WHERE F.ID_Funcionario = E.ID_FuncionarioEnt AND E.dia = 'Terça'
UNION ALL
SELECT F.nome
FROM ENTREGADOR E, FUNCIONARIO F
WHERE F.ID_Funcionario = E.ID_FuncionarioEnt AND E.dia = 'Quinta';

#(8)Encontre o nome dos atendentes que trabalham à noite e anotaram o pedido 208
SELECT F.nome
FROM ATENDENTE A, FUNCIONARIO F
WHERE A.ID_FuncionarioAt = F.ID_Funcionario AND A.turno = 'Noite' AND A.ID_FuncionarioAt
IN
(SELECT A.ID_FuncionarioAt
FROM PEDIDO P
WHERE A.ID_FuncionarioAt = P.ID_FuncionarioAt AND P.ID_Pedido = 208);

#(9)Encontre o nome dos cozinheiros que não fizeram nenhuma torta
SELECT F.nome
FROM FUNCIONARIO F, COZINHEIRO C
WHERE F.ID_Funcionario = C.ID_Funcionario AND F.ID_Funcionario 
NOT IN
(SELECT CFT.ID_FuncionarioResp
FROM COZINHEIRO_FAZ_TORTA CFT
WHERE F.ID_Funcionario = CFT.ID_FuncionarioResp);

#(10)Encontre o nome das tortas que não foram feitas
SELECT T.sabor
FROM TORTA T
WHERE T.ID_Torta
NOT IN
(SELECT T.ID_Torta
FROM TORTA T, COZINHEIRO_FAZ_TORTA CFT
WHERE T.ID_Torta =  CFT.ID_Torta);

#(11)Verifique os pedidos feitos no mês de janeiro de 2022 e suas respectivas descrições.
SELECT P.ID_Pedido, P.descricao
FROM PEDIDO P
WHERE P.ID_Pedido IN(
SELECT DISTINCT P.ID_Pedido
FROM PEDIDO P
WHERE (P.data_pedido BETWEEN '2022-01-01' AND '2022-01-31'));

#(12)Encontre a média dos preços dos itens do  estoque que foram verificados em março de 2022 cujos ingredientes estejam na torta 108
SELECT AVG(I.preco) as MediaPrecoIng, AVG(ITEMD.preco) as MediaPrecoItemDecor
FROM ESTOQUE E, INGREDIENTE I, ITEM_DECORATIVO ITEMD
WHERE (E.data_verificacao BETWEEN '2022-03-01' AND '2022-03-30') AND (E.item = I.ID_Ingrediente OR E.item = ITEMD.ID_ItemDecor) AND ID_Ingrediente IN
(SELECT I.ID_Ingrediente
FROM INGREDIENTE I, TORTA T
WHERE T.ID_Torta = 108);