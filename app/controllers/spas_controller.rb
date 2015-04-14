class SpasController < ApplicationController
  # GET /spas
  # GET /spas.xml
  def index
    @spas = Spa.all.paginate :page=>params[:page], :per_page=>40
      render :layout =>"admins"
  end

  # GET /spas/1 
  # GET /spas/1.xml
  def show
    @spa = Spa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @spa }
    end
  end

  # GET /spas/new
  # GET /spas/new.xml
  def new
    @spa = Spa.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @spa }
    end
  end

  # GET /spas/1/edit
  def edit
    @spa = Spa.find(params[:id])
  end

  # POST /spas
  # POST /spas.xml
  def create
    @spa = Spa.new(params[:spa])

    respond_to do |format|
      if @spa.save
        format.html { redirect_to(@spa, :notice => 'Spa was successfully created.') }
        format.xml  { render :xml => @spa, :status => :created, :location => @spa }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @spa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /spas/1
  # PUT /spas/1.xml
  def update
    @spa = Spa.find(params[:id])

    respond_to do |format|
      if @spa.update_attributes(params[:spa])
        format.html { redirect_to(@spa, :notice => 'Spa was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @spa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /spas/1
  # DELETE /spas/1.xml
  def destroy
    @spa = Spa.find(params[:id])
    @spa.destroy

    respond_to do |format|
      format.html { redirect_to(spas_url) }
      format.xml  { head :ok }
    end
  end
end
