class Cidade < ActiveRecord::Base
  belongs_to :ufd
  has_many :clientes
  has_many :entregas
end
