class CreateCidades < ActiveRecord::Migration
  def self.up
    create_table :cidades do |t|
      t.integer :ufd_id
      t.string :codigo_ibge
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :cidades
  end
end
