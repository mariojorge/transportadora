class CreateUfds < ActiveRecord::Migration
  def self.up
    create_table :ufds do |t|
      t.string :codigo_ibge
      t.string :sigla
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :ufds
  end
end
