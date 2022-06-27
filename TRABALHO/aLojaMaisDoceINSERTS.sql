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
