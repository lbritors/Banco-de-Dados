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
 
 INSERT INTO PEDIDO (ID_Pedido, data_pedido, descricao, peso, ID_Funcionario, ID_Cliente) VALUES 
(201, '21/08/2021', 'Torta de Banoffee de Chocolate', 1.5, 901, 1),
(202, '06/01/2022', 'Torta de Banana Integral', 2.0, 902, 2),
(203, '31/01/2022', 'Torta de Tres Leches com Geléia de Morango', 2.5, 903, 3),
(204, '30/11/2021', 'Torta de Limão', 1.0, 904, 4),
(205, '18/10/2021', 'Torta de Brigadeiro com Morango', 3.0, 905, 5),
(206, '04/04/2022', 'Torta de Maçã', 2.5, 906, 6),
(207, '27/10/2021', 'Torta de Brigadeiro com Creme de Avelã', 1.5, 907),
(208, '15/01/2022', 'Cheesecake de Frutas Vermelhas ', 1.5, 908, 8),
(209, '15/02/2022', 'Holandesa', 2.0, 909, 9),
(210, '16/10/2021', 'Torta Suflair', 1.0, 910, 10);

INSERT INTO TORTA (ID_Torta, sabor, preco_100gr, ID_Pedido) VALUES 
(101, 'Banoffee de Chocolate', 33, 201),
(102, 'Banana Integral', 28, 202 ),
(103, 'Brigadeiro com Morango', 29.90, 205),
(104, 'Suflair', 27.90, 210),
(105, 'Cheesecake de Frutas Vermelhas', 34, 208),
(106, 'Brigadeiro com Creme de Avelã', 30.90, 207),
(107, 'Limão', 26,90, 204),
(108, 'Tres Leches com Geléia de Morango', 27, 203),
(109, 'Holandesa', 30, 209),
(110, 'Maçã', 31, 206);

INSERT INTO INGREDIENTE (ID_Ingrediente, nome, preco, ID_Torta, ID_Estoque) VALUES 
(001, 'Farinha de Trigo_kg', 8.00, 110, 2),
(002, 'Farinha de Trigo Integral_kg', 9.00, 102, 2),
(003, 'Leite_litro', 8.00,  108, 2),
(004, 'Chocolate_barra',  10.00,  104, 2),
(005, 'Açúcar_kg', 7.99,  110, 2),
(006, 'Banana_kg', 5.00, 102, 2),
(007, 'Maçã', 6.00,  110, 2),
(008, 'Leite em pó lata', 24.00,  108, 2),
(009, 'Limão', 8.00,  107, 2),
(010, 'Fermento seco',  9.00, 102, 2),
(011, 'Fermento fresco', 10.00, 110, 2),
(012, 'Óleo', 9.00,  105, 2),
(013, 'Ovo_30', 18.00,  107, 2),
(014, 'Acúcar de Confeiteiro_kg', 15.00,  110, 2),
(015, 'Biscoito Maizena', 8.00,  104, 2),
(016, 'Cacau_gr',  10.00,  106, 2),
(017, 'Leite Condensado_l', 7.99, 106, 2),
(018, 'Creme de Leite', 5.00, 109, 2),
(019, 'Morango', 6.00, 103, 2),
(020, 'Sal_kg', 6.00, 102, 2),
(021, 'Baunilha', 15.00, 110, 2),
(022, 'Canela', 8.00, 101, 2);

INSERT INTO ITEM_DECORATIVO (ID_ItemDecor, nome, preco, ID_Torta, ID_Estoque) VALUES 
(401, 'Vela',  10.00, 106, 1),
(402, 'Gelatina', 5.00, 109, 1),
(403, 'Corante',  8.00,  110, 1),
(404, 'Pasta Americana', 12.00, 103, 1),
(405, 'Fita',  5.00, 108, 1),
(406, 'Flor',  5.00, 110, 1),
(407, 'Flor artificial', 4.00, 104, 1),
(408, 'Palito_balão', 5.00, 104, 1),
(409, 'Balão',  8.00, 109, 1),
(410, 'Granulado', 6.00, 101, 1),
(411, 'Confete', 6.00, 105, 1),
(412, 'Papel de Arroz',  5.00, 107, 1);


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

INSERT INTO ATENDENTE (ID_Funcionario, salario_hora, turno, telefone) VALUES 
(901, 18.75, 'Manhã', '985837428'), (902, 18.75, 'Manhã', '986885117'),
(903, 18.75, 'Manhã','982260881'),(904, 17.00, 'Tarde', '985785078'),
(905, 17.00, 'Tarde', '983372939'),(906, 17.00, 'Tarde', '982062379'),
(907, 17.00, 'Tarde', '986599600'),(908, 19.00,  'Noite', '982592087'),
(909, 19.00, 'Noite', '981603822'),(910, 19.00, 'Noite', '981369219');

INSERT INTO COZINHEIRO (ID_Funcionario, salario, nivel, bonificacao) VALUES
(917, 'Sidonnie Hassan', 2000, 'Assistente', 200), (924, 'Asher Deddum', 2000, 'Assistente', 200),
(925, 'York Boner', 2000, 'Assistente', 200),(926, 'Siobhan Tavner', 2000,'Assistente', 200),
(921, 'Hedvige Jopson', 2000,'Assistente', 200), (934, 'Yancey Oki', 1200, 'Aprendiz Assistente', 150),
(929, 'Vivienne Emanulsson', 5000, 'Chef', 400),(930, 'Timmy Levitt', 4000, 'Sub-Chef', 300),
(911, 'Theodosia Goundrill', 1200, 'Aprendiz Assistente', 150), (914, 'Tracey Crowche', 2000, 'Assistente', 200);

INSERT INTO ENTREGADOR (ID_Funcionario, salario_entrega, turno, dia, telefone) VALUES
(931, 10, 'Manhã', 'Segunda','986006632'),(932, 10, 'Manhã', 'Sexta', '983256320'),
(933, 10, 'Tarde', 'Terça', '982938580'), (912, 'Manhã', 'Quarta','985109391'),
(913, 'Manhã', 'Terça','981168762'), (915, 'Tarde', 'Segunda','987651592'),
(916, 'Noite', 'Segunda', '982625273'), (918, 'Noite', 'Terça','987165493'),
(919, 'Tarde', 'Quarta','981819651'),(920, 'Noite', 'Quinta','983940647'),
(916, 'Noite', 'Quarta','982625273'), (920, 'Noite', 'Sexta','983940647'),
(931, 10, 'Noite', 'Sexta','986006632'), (915, 'Tarde', 'Sexta','987651592'),
(913, 'Noite', 'Sábado','981168762'), (913, 'Manhã', 'Quinta','981168762'),
(912, 'Tarde', 'Quinta','985109391'), (912, 'Manhã', 'Sábado','985109391'),
(912, 'Manhã', 'Domingo','985109391'), (918, 'Noite', 'Sábado','987165493'),
(919, 'Tarde', 'Sábado','981819651'), (919, 'Tarde', 'Domingo','981819651');

INSERT INTO COZINHEIRO_FAZ_TORTA (ID_FuncionarioResp, ID_Torta, data_finalizacao) VALUES
(926, 110, 01/12/2021), (929, 107, 22/08/2021), (917, 108, 19/10/2021), (914,102, 06/04/2022), 
(921, 106, 07/01/2022), (930, 105, 01/02/2022), (911, 106, 18/10/2021), (930, 101, 16/01/2022), 
(924, 101, 29/10/2021), (917, 107, 16/02/2022);

INSERT INTO ESTOQUE (ID_Estoque, item, data_verificacao) VALUES 
(1, 401,  22/04/2022),
(1, 402, 22/04/2022),
(1, 403, 22/04/2022),
(1, 404, 13/02/2022),
(1, 405, 13/02/2022,
(1, 406,  13/02/2022),
(1, 406, 05/03/2022),
(1, 408, 05/03/2022),
(1, 409,  05/03/2022),
(1, 410, 05/03/2022), 
(1, 411, 14/01/2022),
(1, 412, 14/01/2022),
(1, 413, 14/01/2022),
(2, 001, 22/04/2022),
(2, 002, 22/04/2022),
(2, 003, 22/04/2022),
(2, 004, 22/04/2022),
(2, 005, 14/01/2022),
(2, 006, 13/02/2022),
(2, 007, 13/02/2022),
(2, 008, 14/01/2022),
(2, 009, 13/02/2022),
(2, 010, 14/01/2022),
(2, 011, 14/01/2022),
(2, 012, 14/01/2022),
(2, 013, 13/02/2022 ),
(2, 014, 05/03/2022),
(2, 015, 13/02/2022),
(2, 016, 14/01/2022),
(2, 017, 05/03/2022),
(2, 018, 05/03/2022),
(2, 019, 05/03/2022),
(2, 020, 05/03/2022),
(2, 021, 05/03/2022),
(2, 022, 22/04/2022)
);
 
 INSERT INTO ESTOQUE_ING (ID_Estoque, Item, quilos) VALUES (
(2, 001, 60),
(2, 002, 30),
(2, 003, 25),
(2, 004, 18),
(2, 005, 25),
(2, 006, 12),
(2, 007, 10),
(2, 008, 12),
(2, 009, 6),
(2, 010, 5),
(2, 011, 7.5),
(2, 012, 10),
(2, 013, 9),
(2, 014, 15),
(2, 015, 7),
(2, 016, 8),
(2, 017, 13),
(2, 018, 4.5),
(2, 019, 2.6),
(2, 020, 5),
(2, 021, 0.78),
(2, 022, 0.3)
);
 
 INSERT INTO ESTOQUE_DECOR(ID_Estoque, Item, quantidade) VALUES 
(1, 401,  24),
(1, 402, 14),
(1, 403, 9),
(1, 404, 22),
(1, 405, 27),
(1, 406,  10),
(1, 407, 18),
(1, 408, 40),
(1, 409,  64),
(1, 410, 8), 
(1, 411, 14),
(1, 412, 10);

INSERT INTO FUNCIONARIO_ORGANIZA_ESTOQUE (ID_Funcionario, ID_Estoque, item) VALUES
(922, 1, 405), (923, 1, 410 ), (927, 1, 403 ), (928, 1, 412),
(922, 1, 408), (923, 1, 411 ), (927, 1, 410 ), (928, 1, 402),
(922, 2, 013), (923, 2, 014 ), (927, 1, 009 ), (928, 1, 003),
(922, 1, 015), (923, 1, 022 ), (927, 1, 004 ), (928, 2, 007),
(922, 1, 001), (923, 1, 008), (927, 1, 005), (928, 1, 012);