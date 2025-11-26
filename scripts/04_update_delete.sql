USE studio_beleza;

-- ===========================
-- UPDATES
-- ===========================

-- 1) Atualizar telefone de um cliente específico
UPDATE CLIENTE
SET telefone = '(11) 90000-0000'
WHERE id_cliente = 1;

-- 2) Marcar agendamento como CONCLUIDO
UPDATE AGENDAMENTO
SET status = 'CONCLUIDO'
WHERE id_ag = 3;

-- 3) Reajustar preço (+10%) no serviço Massagem Relaxante
UPDATE SERVICO
SET preco = preco * 1.10
WHERE descricao = 'Massagem Relaxante';

-- ===========================
-- DELETES
-- ===========================

-- 1) Remover relação de produto usado em um serviço
DELETE FROM SERVICO_PRODUTO
WHERE id_serv = 3
  AND id_prod = 4;

-- 2) Deletar pagamentos pendentes de agendamentos cancelados
DELETE FROM PAGAMENTO
WHERE id_ag IN (
  SELECT id_ag 
  FROM AGENDAMENTO 
  WHERE status = 'CANCELADO'
);

-- 3) Deletar agendamentos cancelados
DELETE FROM AGENDAMENTO
WHERE status = 'CANCELADO';

