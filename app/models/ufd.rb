class Ufd < ActiveRecord::Base
  has_many :cidades
  has_many :clientes
  has_many :entregas
end
