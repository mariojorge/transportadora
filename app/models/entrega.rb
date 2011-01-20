class Entrega < ActiveRecord::Base
  belongs_to :motorista
  belongs_to :cliente
  belongs_to :cidade
  belongs_to :ufd

  validates_presence_of :data_da_partida, :data_do_retorno, :data_da_entrega

  def em_andamento?
    self.data_da_partida >= Date.today && self.data_do_retorno >= Date.today ? true : false
  end
  
  def estara_em_andamento?(data)
    status = false
    (self.data_da_partida .. (self.data_do_retorno - 1)).each do |data_corrente|
      status = true if data_corrente == data
    end
    status
  end

  def self.estarao_em_andamento(data)
    entregas = Array.new
    Entrega.all.each do |entrega|      
      entregas << entrega if entrega.estara_em_andamento?(data)
    end
    entregas
  end

end
