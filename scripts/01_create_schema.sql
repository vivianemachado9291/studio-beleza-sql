-- Criação do banco e seleção
CREATE DATABASE studio_beleza;
USE studio_beleza;

-- CLIENTE
CREATE TABLE CLIENTE (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  nome       VARCHAR(100) NOT NULL,
  telefone   VARCHAR(20)  NOT NULL,
  cpf        VARCHAR(14)  NOT NULL UNIQUE
);

-- PROFISSIONAL
CREATE TABLE PROFISSIONAL (
  id_prof       INT AUTO_INCREMENT PRIMARY KEY,
  nome          VARCHAR(100) NOT NULL,
  especialidade VARCHAR(100) NOT NULL
);

-- SERVICO
CREATE TABLE SERVICO (
  id_serv     INT AUTO_INCREMENT PRIMARY KEY,
  descricao   VARCHAR(100) NOT NULL,
  duracao_min INT NOT NULL,
  preco       DECIMAL(10,2) NOT NULL
);

-- PRODUTO
CREATE TABLE PRODUTO (
  id_prod            INT AUTO_INCREMENT PRIMARY KEY,
  nome               VARCHAR(100) NOT NULL,
  quantidade_estoque INT NOT NULL,
  categoria          VARCHAR(50) NOT NULL
);

-- AGENDAMENTO
CREATE TABLE AGENDAMENTO (
  id_ag      INT AUTO_INCREMENT PRIMARY KEY,
  data       DATE NOT NULL,
  hora       TIME NOT NULL,
  status     VARCHAR(20) NOT NULL,
  id_cliente INT NOT NULL,
  id_prof    INT NOT NULL,
  id_serv    INT NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente),
  FOREIGN KEY (id_prof) REFERENCES PROFISSIONAL(id_prof),
  FOREIGN KEY (id_serv) REFERENCES SERVICO(id_serv)
);

-- PAGAMENTO
CREATE TABLE PAGAMENTO (
  id_pag   INT AUTO_INCREMENT PRIMARY KEY,
  valor    DECIMAL(10,2) NOT NULL,
  forma_pag VARCHAR(20) NOT NULL,
  status   VARCHAR(20) NOT NULL,
  data_pag DATE NOT NULL,
  id_ag    INT NOT NULL,
  FOREIGN KEY (id_ag) REFERENCES AGENDAMENTO(id_ag)
);

-- SERVICO x PRODUTO (N:N)
CREATE TABLE SERVICO_PRODUTO (
  id_serv   INT NOT NULL,
  id_prod   INT NOT NULL,
  qtd_usada INT NOT NULL,
  PRIMARY KEY (id_serv, id_prod),
  FOREIGN KEY (id_serv) REFERENCES SERVICO(id_serv),
  FOREIGN KEY (id_prod) REFERENCES PRODUTO(id_prod)
);
