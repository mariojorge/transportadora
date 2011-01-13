class CidadesController < ApplicationController
  
  def clientes
    @clientes = Cidade.find(params[:cidade_id]).clientes
    respond_to do |format|
      format.json  { render :json => @clientes }
    end
  end

end
