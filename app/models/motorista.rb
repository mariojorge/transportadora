class Motorista < ActiveRecord::Base
  has_many :entregas

  def disponivel?(data)
    self.entregas.last.data_do_retorno <= data ? true : false
  end
end
