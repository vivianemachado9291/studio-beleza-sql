-- Criação do banco de dados
CREATE DATABASE studio_beleza;
USE studio_beleza;

-- Tabela de clientes
CREATE TABLE CLIENTE (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  nome       VARCHAR(100) NOT NULL,
  telefone   VARCHAR(20)  NOT NULL,
  cpf        VARCHAR(14)  NOT NULL UNIQUE
);

-- Tabela de profissionais
CREATE TABLE PROFISSIONAL (
  id_prof       INT AUTO_INCREMENT PRIMARY KEY,
  nome          VARCHAR(100) NOT NULL,
  especialidade VARCHAR(100) NOT NULL
);

-- Tabela de serviços
CREATE TABLE SERVICO (
  id_serv     INT AUTO_INCREMENT PRIMARY KEY,
  descricao   VARCHAR(100) NOT NULL,
  duracao_min INT          NOT NULL,
  preco       DECIMAL(10,2) NOT NULL
);

-- Tabela de produtos
CREATE TABLE PRODUTO (
  id_prod            INT AUTO_INCREMENT PRIMARY KEY,
  nome               VARCHAR(100) NOT NULL,
  quantidade_estoque INT          NOT NULL,
  categoria          VARCHAR(50)  NOT NULL
);

-- Tabela de agendamentos
CREATE TABLE AGENDAMENTO (
  id_ag      INT AUTO_INCREMENT PRIMARY KEY,
  data       DATE        NOT NULL,
  hora       TIME        NOT NULL,
  status     VARCHAR(20) NOT NULL,   -- PENDENTE, CONCLUIDO, CANCELADO
  id_cliente INT         NOT NULL,
  id_prof    INT         NOT NULL,
  id_serv    INT         NOT NULL,
  CONSTRAINT fk_ag_cliente FOREIGN KEY (id_cliente)
    REFERENCES CLIENTE(id_cliente),
  CONSTRAINT fk_ag_prof FOREIGN KEY (id_prof)
    REFERENCES PROFISSIONAL(id_prof),
  CONSTRAINT fk_ag_serv FOREIGN KEY (id_serv)
    REFERENCES SERVICO(id_serv)
);

-- Tabela de pagamentos
CREATE TABLE PAGAMENTO (
  id_pag   INT AUTO_INCREMENT PRIMARY KEY,
  valor    DECIMAL(10,2) NOT NULL,
  forma_pag VARCHAR(20)  NOT NULL,   -- PIX, CARTAO, DINHEIRO
  status   VARCHAR(20)   NOT NULL,   -- PAGO, PENDENTE
  data_pag DATE          NOT NULL,
  id_ag    INT           NOT NULL,
  CONSTRAINT fk_pag_agendamento FOREIGN KEY (id_ag)
    REFERENCES AGENDAMENTO(id_ag)
);

-- Tabela associativa SERVICO x PRODUTO (N:N)
CREATE TABLE SERVICO_PRODUTO (
  id_serv   INT NOT NULL,
  id_prod   INT NOT NULL,
  qtd_usada INT NOT NULL,
  PRIMARY KEY (id_serv, id_prod),
  CONSTRAINT fk_sp_serv FOREIGN KEY (id_serv)
    REFERENCES SERVICO(id_serv),
  CONSTRAINT fk_sp_prod FOREIGN KEY (id_prod)
    REFERENCES PRODUTO(id_prod)
);
,
