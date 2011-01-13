class CreateClientes < ActiveRecord::Migration
  def self.up
    create_table :clientes do |t|
      t.integer :cidade_id
      t.string :nome_fantasia
      t.string :razao_social
      t.string :cnpj
      t.string :endereco
      t.string :bairro
      t.string :cep

      t.timestamps
    end
  end

  def self.down
    drop_table :clientes
  end
end
