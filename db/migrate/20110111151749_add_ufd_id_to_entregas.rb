class AddUfdIdToEntregas < ActiveRecord::Migration
  def self.up
    add_column :entregas, :ufd_id, :integer
  end

  def self.down
    remove_column :entregas, :ufd_id
  end
end
