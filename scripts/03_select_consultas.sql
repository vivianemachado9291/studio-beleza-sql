USE studio_beleza;

-- 1) Lista de agendamentos completos
SELECT
  ag.id_ag,
  ag.data,
  ag.hora,
  ag.status,
  c.nome AS cliente,
  p.nome AS profissional,
  s.descricao AS servico,
  s.preco
FROM AGENDAMENTO ag
JOIN CLIENTE c ON ag.id_cliente = c.id_cliente
JOIN PROFISSIONAL p ON ag.id_prof = p.id_prof
JOIN SERVICO s ON ag.id_serv = s.id_serv
ORDER BY ag.data, ag.hora;

-- 2) Agendamentos pendentes
SELECT
  ag.id_ag,
  ag.data,
  ag.hora,
  c.nome AS cliente,
  s.descricao AS servico
FROM AGENDAMENTO ag
JOIN CLIENTE c ON ag.id_cliente = c.id_cliente
JOIN SERVICO s ON ag.id_serv = s.id_serv
WHERE ag.status = 'PENDENTE'
ORDER BY ag.data, ag.hora;

-- 3) Faturamento diário
SELECT
  data_pag,
  SUM(valor) AS faturamento_total
FROM PAGAMENTO
WHERE status = 'PAGO'
GROUP BY data_pag;

-- 4) Top 3 serviços mais agendados
SELECT
  s.descricao,
  COUNT(*) AS total_agendamentos
FROM AGENDAMENTO ag
JOIN SERVICO s ON ag.id_serv = s.id_serv
GROUP BY s.descricao
ORDER BY total_agendamentos DESC
LIMIT 3;
