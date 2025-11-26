USE studio_beleza;

-- CLIENTES
INSERT INTO CLIENTE (nome, telefone, cpf) VALUES
('Ana Souza',   '(11) 99999-1111', '123.456.789-00'),
('Bruna Lima',  '(11) 98888-2222', '987.654.321-00'),
('Carla Silva', '(11) 97777-3333', '111.222.333-44');

-- PROFISSIONAIS
INSERT INTO PROFISSIONAL (nome, especialidade) VALUES
('Mariana Alves', 'Cílios'),
('Patrícia Costa', 'Unhas'),
('Renata Melo', 'Massagem');

-- SERVIÇOS
INSERT INTO SERVICO (descricao, duracao_min, preco) VALUES
('Extensão de Cílios Volume Russo', 120, 250.00),
('Design de Sobrancelhas',           40,  60.00),
('Manicure e Pedicure',              60,  80.00),
('Massagem Relaxante',               90, 150.00);

-- PRODUTOS
INSERT INTO PRODUTO (nome, quantidade_estoque, categoria) VALUES
('Cola para Cílios',         30, 'Cílios'),
('Kit Alongamento em Gel',   20, 'Unhas'),
('Óleo para Massagem',       15, 'Massagem'),
('Creme Hidratante para Mãos', 25, 'Unhas');

-- AGENDAMENTOS
INSERT INTO AGENDAMENTO (data, hora, status, id_cliente, id_prof, id_serv) VALUES
('2025-11-25', '14:00:00', 'CONCLUIDO', 1, 1, 1), -- Ana - Cílios com Mariana
('2025-11-25', '16:00:00', 'CANCELADO', 2, 2, 3), -- Bruna - Manicure com Patrícia (cancelado)
('2025-11-26', '10:00:00', 'PENDENTE',  3, 3, 4); -- Carla - Massagem com Renata

-- PAGAMENTOS
INSERT INTO PAGAMENTO (valor, forma_pag, status, data_pag, id_ag) VALUES
(250.00, 'PIX',     'PAGO',     '2025-11-25', 1),
( 80.00, 'CARTAO',  'PENDENTE', '2025-11-25', 2),
(150.00, 'DINHEIRO','PENDENTE', '2025-11-26', 3);

-- SERVICO_PRODUTO (ligação N:N)
INSERT INTO SERVICO_PRODUTO (id_serv, id_prod, qtd_usada) VALUES
(1, 1, 1),  -- Cílios usa Cola
(3, 2, 1),  -- Manicure usa Kit em Gel
(3, 4, 1),  -- Manicure usa Creme
(4, 3, 1);  -- Massagem usa Óleo

