class Entrega < ActiveRecord::Base
  belongs_to :motorista
  belongs_to :cliente
  belongs_to :cidade
  belongs_to :ufd

end
