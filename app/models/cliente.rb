class Cliente < ActiveRecord::Base
  belongs_to :cidade
  belongs_to :ufd
  has_many :entregas
end
