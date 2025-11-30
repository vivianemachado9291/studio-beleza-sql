USE studio_beleza;

-- CLIENTES
INSERT INTO CLIENTE (nome, telefone, cpf) VALUES
('Ana Souza', '(11) 99999-1111', '123.456.789-00'),
('Bruna Lima', '(11) 98888-2222', '987.654.321-00'),
('Carla Silva', '(11) 97777-3333', '111.222.333-44');

-- PROFISSIONAIS
INSERT INTO PROFISSIONAL (nome, especialidade) VALUES
('Mariana Alves', 'Designer de Cílios'),
('Patrícia Costa', 'Manicure e Pedicure'),
('Renata Melo', 'Massoterapeuta');

-- SERVICOS
INSERT INTO SERVICO (descricao, duracao_min, preco) VALUES
('Extensão de Cílios Volume Russo', 120, 250.00),
('Manicure e Pedicure', 60, 80.00),
('Massagem Relaxante', 90, 130.00);

-- PRODUTOS
INSERT INTO PRODUTO (nome, quantidade_estoque, categoria) VALUES
('Removedor de cola', 10, 'Cílios'),
('Lixa de unha', 50, 'Manicure'),
('Óleo de massagem', 20, 'Massagem'),
('Gel UV', 30, 'Unhas');

-- AGENDAMENTOS
INSERT INTO AGENDAMENTO (data, hora, status, id_cliente, id_prof, id_serv) VALUES
('2025-11-25', '14:00:00', 'CONCLUIDO', 1, 1, 1),
('2025-11-25', '16:00:00', 'CANCELADO', 2, 2, 2),
('2025-11-26', '10:00:00', 'PENDENTE', 3, 3, 3);

-- PAGAMENTOS
INSERT INTO PAGAMENTO (valor, forma_pag, status, data_pag, id_ag) VALUES
(250.00, 'PIX', 'PAGO', '2025-11-25', 1),
(80.00, 'CARTAO', 'PENDENTE', '2025-11-25', 2),
(150.00, 'DINHEIRO', 'PENDENTE', '2025-11-26', 3);

-- SERVICO x PRODUTO
INSERT INTO SERVICO_PRODUTO (id_serv, id_prod, qtd_usada) VALUES
(1, 1, 1),
(3, 2, 1),
(3, 4, 1),
(2, 4, 1);
