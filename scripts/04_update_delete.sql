USE studio_beleza;

-- Atualização de telefone
UPDATE CLIENTE
SET telefone = '(11) 90000-1111'
WHERE id_cliente = 1;

-- Atualização de status do agendamento
UPDATE AGENDAMENTO
SET status = 'CONCLUIDO'
WHERE id_ag = 3;

-- Reajuste de preço (+10%) no serviço 2
UPDATE SERVICO
SET preco = preco * 1.10
WHERE id_serv = 2;

-- Atualização de status do pagamento
UPDATE PAGAMENTO
SET status = 'PAGO'
WHERE id_pag = 3;

-- DELETE – exclusões
DELETE FROM SERVICO_PRODUTO
WHERE id_serv = 1 AND id_prod = 1;

DELETE FROM PAGAMENTO
WHERE id_pag = 2;

DELETE FROM AGENDAMENTO
WHERE id_ag = 2;
