class EntregasController < ApplicationController
  # GET /entregas
  # GET /entregas.xml

  def index
    @entregas = Entrega.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @entregas }
    end
  end

  # GET /entregas/1
  # GET /entregas/1.xml
  def show
    @entrega = Entrega.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @entrega }
    end
  end

  # GET /entregas/new
  # GET /entregas/new.xml
  def new
    @entrega = Entrega.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @entrega }
    end
  end

  # GET /entregas/1/edit
  def edit
    @entrega = Entrega.find(params[:id])
  end

  # POST /entregas
  # POST /entregas.xml
  def create
    @entrega = Entrega.new(params[:entrega])

    respond_to do |format|
      if @entrega.save
        format.html { redirect_to(@entrega, :notice => 'Entrega was successfully created.') }
        format.xml  { render :xml => @entrega, :status => :created, :location => @entrega }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @entrega.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /entregas/1
  # PUT /entregas/1.xml
  def update
    @entrega = Entrega.find(params[:id])

    respond_to do |format|
      if @entrega.update_attributes(params[:entrega])
        format.html { redirect_to(@entrega, :notice => 'Entrega was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @entrega.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /entregas/1
  # DELETE /entregas/1.xml
  def destroy
    @entrega = Entrega.find(params[:id])
    @entrega.destroy

    respond_to do |format|
      format.html { redirect_to(entregas_url) }
      format.xml  { head :ok }
    end
  end

end
