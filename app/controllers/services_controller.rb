class ServicesController < ApplicationController
  # GET /services
  # GET /services.xml
  layout "admins"
  def index
    #@services = Service.find(:all,:conditions=>"be_delete is null").paginate :page=>params[:page], :per_page=>40
    @services = Service.find(:all)
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @services }
    end
  end
  
  
  def ticket_orders
    @services = Service.find(:all,:conditions=>"be_delete is null").paginate :page=>params[:page], :per_page=>40
  end
  
  def house_orders
    @services = Service.find(:all,:conditions=>"be_delete is null").paginate :page=>params[:page], :per_page=>40
  end
  
  def speser_orders
    @services = Service.find(:all,:conditions=>"be_delete is null").paginate :page=>params[:page], :per_page=>40
  end
  
 
  # GET /services/1
  # GET /services/1.xml
  def show
    @service = Service.find(params[:id])
    @products = @service.products

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @service }
    end
  end

  # GET /services/new
  # GET /services/new.xml
  def new
    @service = Service.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @service }
    end
  end

  # GET /services/1/edit
  def edit
    @service = Service.find(params[:id])
  end

  # POST /services
  # POST /services.xml
  def create
    @service = Service.new(params[:service])

    respond_to do |format|
      if @service.save
        format.html { redirect_to(@service, :notice => 'Service was successfully created.') }
        format.xml  { render :xml => @service, :status => :created, :location => @service }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @service.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /services/1
  # PUT /services/1.xml
  def update
    @service = Service.find(params[:id])

    respond_to do |format|
      if @service.update_attributes(params[:service])
        format.html { redirect_to(@service, :notice => 'Service was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @service.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.xml
  def destroy
    @service = Service.find(params[:id])
    @service.destroy

    respond_to do |format|
      format.html { redirect_to(services_url) }
      format.xml  { head :ok }
    end
  end
end