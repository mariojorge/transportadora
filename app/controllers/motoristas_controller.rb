class MotoristasController < ApplicationController
  # GET /motoristas
  # GET /motoristas.xml

  def disponiveis
    @motoristas = Motorista.disponiveis(params[:data].to_date)
    respond_to do |format|
      format.json {render :json => @motoristas}
    end
  end

  def index
    @motoristas = Motorista.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @motoristas }
    end
  end

  # GET /motoristas/1
  # GET /motoristas/1.xml
  def show
    @motorista = Motorista.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @motorista }
    end
  end

  # GET /motoristas/new
  # GET /motoristas/new.xml
  def new
    @motorista = Motorista.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @motorista }
    end
  end

  # GET /motoristas/1/edit
  def edit
    @motorista = Motorista.find(params[:id])
  end

  # POST /motoristas
  # POST /motoristas.xml
  def create
    @motorista = Motorista.new(params[:motorista])

    respond_to do |format|
      if @motorista.save
        format.html { redirect_to(@motorista, :notice => 'Motorista was successfully created.') }
        format.xml  { render :xml => @motorista, :status => :created, :location => @motorista }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @motorista.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /motoristas/1
  # PUT /motoristas/1.xml
  def update
    @motorista = Motorista.find(params[:id])

    respond_to do |format|
      if @motorista.update_attributes(params[:motorista])
        format.html { redirect_to(@motorista, :notice => 'Motorista was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @motorista.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /motoristas/1
  # DELETE /motoristas/1.xml
  def destroy
    @motorista = Motorista.find(params[:id])
    @motorista.destroy

    respond_to do |format|
      format.html { redirect_to(motoristas_url) }
      format.xml  { head :ok }
    end
  end
end
