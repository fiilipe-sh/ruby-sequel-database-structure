# ruby-sequel-database-structure
Exemplo prático de modelagem relacional utilizando Ruby, Sequel ORM e SQLite3. O projeto demonstra criação de tabelas, chaves estrangeiras e boas práticas na definição de esquemas de banco de dados.

# 🧱 Estrutura de Banco de Dados em Ruby (Sequel + SQLite3)

Este repositório apresenta um exemplo completo de **estrutura de banco de dados relacional** desenvolvida em **Ruby**, utilizando o **Sequel ORM** e o **SQLite3**.

O código demonstra como criar tabelas relacionadas com **chaves estrangeiras**, **restrições de integridade** e **boas práticas de modelagem**.

---

## 🧠 Tecnologias Utilizadas

- **Ruby** 3.x  
- **Sequel** — ORM para manipulação de bancos de dados  
- **SQLite3** — Banco de dados leve e local  

---

## 🗂️ Estrutura do Banco de Dados

O script cria automaticamente as seguintes tabelas:

| Tabela | Descrição |
|--------|------------|
| **clientes** | Armazena informações de clientes (CPF, e-mail, telefone e senha criptografada). |
| **proprietarios** | Representa administradores ou gestores, com dados de experiência e certificação. |
| **empresas** | Contém os dados principais das empresas cadastradas (nome, descrição, endereço, horários etc.). |
| **servicos** | Lista de serviços oferecidos por cada empresa, com descrição e preço. |
| **funcionarios** | Registra os colaboradores de cada empresa, incluindo nome e foto. |
| **produtos** | Produtos disponíveis em cada empresa, com descrição e valores. |

---

## ⚙️ Como Executar o Script

### 1. Instale as dependências

Certifique-se de ter o **Ruby** instalado.  
Em seguida, instale as gems necessárias:

```bash
gem install sequel sqlite3
