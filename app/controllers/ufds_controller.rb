class UfdsController < ApplicationController
  
  def cidades
    @cidades = Ufd.find(params[:ufd_id]).cidades
    respond_to do |format|
      format.json  { render :json => @cidades }
    end
  end

end
