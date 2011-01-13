class CreateMotoristas < ActiveRecord::Migration
  def self.up
    create_table :motoristas do |t|
      t.string :nome
      t.string :telefone

      t.timestamps
    end
  end

  def self.down
    drop_table :motoristas
  end
end
