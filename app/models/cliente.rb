class Cliente < ApplicationRecord
    validates :nome, :telefone, :celular, :cpf, :email, presence: true
end
