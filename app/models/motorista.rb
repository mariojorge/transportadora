class Motorista < ActiveRecord::Base
  has_many :entregas


  def disponivel?
    status = true;
    self.entregas.each do |entrega|
      status = false if entrega.em_andamento?
    end
    status
  end
  
  def self.disponiveis(data)
    motoristas = Motorista.all
    Entrega.estarao_em_andamento(data).each do |entrega|
      motoristas.delete(entrega.motorista)
    end
    motoristas
  end

end
