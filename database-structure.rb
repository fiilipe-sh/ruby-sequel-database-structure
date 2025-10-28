require 'sequel'

DB = Sequel.sqlite('DB/banco_de_dados.sqlite3')

# ------------------------------
# Tabela de Clientes
# ------------------------------
DB.create_table?(:clientes) do
  primary_key :id
  String :cpf, size: 11, unique: true, null: false
  String :email, size: 40, unique: true, null: false
  String :telefone, size: 30, null: false
  String :senha_hash, null: false
end

# ------------------------------
# Tabela de Administradores / Proprietários
# ------------------------------
DB.create_table?(:proprietarios) do
  primary_key :id
  String :cpf, size: 11, unique: true, null: false
  String :email, size: 40, unique: true, null: false
  String :telefone, size: 30, null: false
  String :senha_hash, null: false
  String :anos_de_experiencia, size: 99, null: false
  String :especialidades, size: 500
  String :documento_certificacao, size: 400, null: false, unique: true
end

# ------------------------------
# Tabela de Estabelecimentos / Empresas
# ------------------------------
DB.create_table?(:empresas) do
  primary_key :id
  String :nome_responsavel, size: 200, null: false
  String :nome_da_empresa, size: 70, null: false
  String :foto_de_perfil, size: 400, null: false, unique: true
  String :descricao, size: 400, null: false
  String :endereco, size: 500, null: false
  String :telefone, size: 30, null: false
  String :comodidades, size: 200, null: false
  String :horario_abertura, null: false
  String :horario_fechamento, null: false
  Float :preco_maximo
  Float :preco_minimo
end

# ------------------------------
# Tabela de Serviços
# ------------------------------
DB.create_table?(:servicos) do
  primary_key :id
  foreign_key :empresa_id, :empresas
  String :nome_servico, size: 60, null: false
  String :descricao_servico, size: 100, null: false
  Float :preco_servico, null: false
end

# ------------------------------
# Tabela de Funcionários
# ------------------------------
DB.create_table?(:funcionarios) do
  primary_key :id
  foreign_key :empresa_id, :empresas
  String :nome_funcionario, size: 50, null: false
  String :foto_funcionario, size: 400, null: false
end

# ------------------------------
# Tabela de Produtos
# ------------------------------
DB.create_table?(:produtos) do
  primary_key :id
  foreign_key :empresa_id, :empresas
  String :nome_produto, size: 100, null: false
  Float :preco_produto, null: false
  String :descricao_produto, size: 200, null: false
end
