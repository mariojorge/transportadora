class CreateEntregas < ActiveRecord::Migration
  def self.up
    create_table :entregas do |t|
      t.integer :cliente_id
      t.integer :motorista_id
      t.integer :cidade_id
      t.date :data_da_partida
      t.date :data_da_entrega
      t.date :data_do_retorno

      t.timestamps
    end
  end

  def self.down
    drop_table :entregas
  end
end
