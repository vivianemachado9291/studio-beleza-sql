# 🌸 Studio Beleza Verdadeira – Scripts SQL (DML)
### *Experiência Prática IV – Modelagem e Manipulação de Dados*

![Static Badge](https://img.shields.io/badge/SQL-DML-blue)
![Static Badge](https://img.shields.io/badge/MySQL-Workbench-orange)
![Static Badge](https://img.shields.io/badge/Projeto-Acadêmico-purple)
![Static Badge](https://img.shields.io/badge/Status-Concluído-success)

---

##  Sobre o Projeto

Este repositório contém a implementação prática, em SQL, do banco de dados do projeto **Studio Beleza Verdadeira**, desenvolvido ao longo das Experiências Práticas I, II e III.

Nesta etapa (Exp IV), foram aplicados:

- Comandos fundamentais de manipulação de dados (INSERT, SELECT, UPDATE, DELETE)  
- Uso de tipos de dados coerentes  
- Relações entre tabelas com JOINs  
- Execução e testes no MySQL Workbench  
- Organização e versionamento dos scripts  
- Criação de consultas reais e funcionais baseadas no minimundo  

---

##  01_create_schema.sql – Criação do Schema e Tabelas

Este script contém:

- Criação do banco de dados `studio_beleza`
- Tabelas:
  - CLIENTE  
  - PROFISSIONAL  
  - SERVICO  
  - PRODUTO  
  - AGENDAMENTO  
  - PAGAMENTO  
  - SERVICO_PRODUTO
- Chaves primárias, estrangeiras e tipos de dados

---

##  02_insert_dados.sql – Inserção de Dados

Tabelas populadas:

- Clientes  
- Profissionais  
- Serviços  
- Produtos  
- Agendamentos  
- Pagamentos  
- Relação Serviço × Produto  

---

##  03_select_consultas.sql – Consultas

Consultas implementadas:

1. Lista de clientes  
2. Agendamentos completos (JOIN)  
3. Pagamentos concluídos  
4. Faturamento diário  
5. Top 3 serviços mais agendados  

---

##  04_update_delete.sql – Atualizações e Exclusões

### UPDATE  
- Atualização de telefone  
- Atualização de status  
- Reajuste de preço  

### DELETE  
- Exclusão de relação serviço-produto  
- Exclusão de pagamentos pendentes  
- Exclusão de agendamentos cancelados  

---

##  Ferramentas Utilizadas

- MySQL Workbench  
- MySQL Server  
- GitHub  
- VSCode (editor de código)
