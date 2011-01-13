class AddUfdIdToClientes < ActiveRecord::Migration
  def self.up
    add_column :clientes, :ufd_id, :integer
  end

  def self.down
    remove_column :clientes, :ufd_id
  end
end
