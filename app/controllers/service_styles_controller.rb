class ServiceStylesController < ApplicationController
  # GET /service_styles
  # GET /service_styles.xml
  layout "admins"
  def index
    @service_styles = ServiceStyle.find(:all,:conditions=>"be_delete is null", :order =>'convert(id using gbk)desc').paginate :page=>params[:page], :per_page=>40

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @service_styles }
    end
  end
    
  def check_youji#首页推荐
    ServiceStyle.find(params[:id]).update_attributes(:hide=>(params[:cancel] ? 0 : 1))
    render :text=>(params[:cancel] ? "取消推荐" : "已推荐")
  end

  # GET /service_styles/1
  # GET /service_styles/1.xml
  def show
    @service_style = ServiceStyle.find(params[:id])
    @services = Service.find(:all,:conditions=>"be_delete is null and service_style_id=#{@service_style.id}")
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @service_style }
    end
  end

  # GET /service_styles/new
  # GET /service_styles/new.xml
  def new
    @service_style = ServiceStyle.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @service_style }
    end
  end

  # GET /service_styles/1/edit
  def edit
    @service_style = ServiceStyle.find(params[:id])
  end

  # POST /service_styles
  # POST /service_styles.xml
  def create
    @service_style = ServiceStyle.new(params[:service_style])

    respond_to do |format|
      if @service_style.save
        format.html { redirect_to(@service_style, :notice => 'ServiceStyle was successfully created.') }
        format.xml  { render :xml => @service_style, :status => :created, :location => @service_style }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @service_style.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /service_styles/1
  # PUT /service_styles/1.xml
  def update
    @service_style = ServiceStyle.find(params[:id])

    respond_to do |format|
      if @service_style.update_attributes(params[:service_style])
        format.html { redirect_to(@service_style, :notice => 'ServiceStyle was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @service_style.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /service_styles/1
  # DELETE /service_styles/1.xml
  def destroy
    @service_style = ServiceStyle.find(params[:id])
    @service_style.destroy

    respond_to do |format|
      format.html { redirect_to(service_styles_url) }
      format.xml  { head :ok }
    end
  end
end
