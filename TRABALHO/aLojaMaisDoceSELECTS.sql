
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