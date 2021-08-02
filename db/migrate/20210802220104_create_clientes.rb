class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :cpf
      t.string :telefone
      t.string :celular
      t.string :email
      t.string :cep
      t.string :numero
      t.string :cidade
      t.string :estado
      t.string :complemento

      t.timestamps
    end
  end
end
