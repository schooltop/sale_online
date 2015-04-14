class VipServicesController < ApplicationController
  # GET /vip_services
  # GET /vip_services.xml
   layout "admins"
  def index
    @vip_services = VipService.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vip_services }
    end
  end

  # GET /vip_services/1
  # GET /vip_services/1.xml
  def show
    @vip_service = VipService.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vip_service }
    end
  end

  # GET /vip_services/new
  # GET /vip_services/new.xml
  def new
    @vip_service = VipService.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vip_service }
    end
  end

  # GET /vip_services/1/edit
  def edit
    @vip_service = VipService.find(params[:id])
  end

  # POST /vip_services
  # POST /vip_services.xml
  def create
    @vip_service = VipService.new(params[:vip_service])

    respond_to do |format|
      if @vip_service.save
        format.html { redirect_to(@vip_service, :notice => 'VipService was successfully created.') }
        format.xml  { render :xml => @vip_service, :status => :created, :location => @vip_service }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vip_service.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vip_services/1
  # PUT /vip_services/1.xml
  def update
    @vip_service = VipService.find(params[:id])

    respond_to do |format|
      if @vip_service.update_attributes(params[:vip_service])
        format.html { redirect_to(@vip_service, :notice => 'VipService was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vip_service.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vip_services/1
  # DELETE /vip_services/1.xml
  def destroy
    @vip_service = VipService.find(params[:id])
    @vip_service.destroy

    respond_to do |format|
      format.html { redirect_to(vip_services_url) }
      format.xml  { head :ok }
    end
  end
end
