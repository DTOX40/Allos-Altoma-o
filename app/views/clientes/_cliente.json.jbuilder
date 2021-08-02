json.extract! cliente, :id, :nome, :cpf, :telefone, :celular, :email, :cep, :numero, :cidade, :estado, :complemento, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
