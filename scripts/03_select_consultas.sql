USE studio_beleza;

-- 1) Listar todos os clientes cadastrados
SELECT id_cliente, nome, telefone, cpf
FROM CLIENTE
ORDER BY nome;

-- 2) Agendamentos com JOIN
SELECT 
  a.id_ag,
  a.data,
  a.hora,
  a.status,
  c.nome AS cliente,
  p.nome AS profissional,
  s.descricao AS servico
FROM AGENDAMENTO a
JOIN CLIENTE c      ON a.id_cliente = c.id_cliente
JOIN PROFISSIONAL p ON a.id_prof    = p.id_prof
JOIN SERVICO s      ON a.id_serv    = s.id_serv
ORDER BY a.data, a.hora;

-- 3) Agendamentos concluídos e pagos
SELECT 
  a.id_ag,
  a.data,
  c.nome AS cliente,
  s.descricao AS servico,
  pg.valor,
  pg.forma_pag
FROM AGENDAMENTO a
JOIN CLIENTE c   ON a.id_cliente = c.id_cliente
JOIN SERVICO s   ON a.id_serv    = s.id_serv
JOIN PAGAMENTO pg ON pg.id_ag    = a.id_ag
WHERE a.status = 'CONCLUIDO'
  AND pg.status = 'PAGO';

-- 4) Faturamento total por dia
SELECT 
  data_pag,
  SUM(valor) AS faturamento_total
FROM PAGAMENTO
WHERE status = 'PAGO'
GROUP BY data_pag
ORDER BY data_pag;

-- 5) Serviços mais agendados (TOP 3)
SELECT 
  s.descricao AS servico,
  COUNT(a.id_ag) AS total_agendamentos
FROM SERVICO s
LEFT JOIN AGENDAMENTO a ON a.id_serv = s.id_serv
GROUP BY s.id_serv, s.descricao
ORDER BY total_agendamentos DESC
LIMIT 3;

