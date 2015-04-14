class VipStylesController < ApplicationController
  # GET /vip_styles
  # GET /vip_styles.xml
  layout "admins"
  def index
    @vip_styles = VipStyle.find(:all,:conditions=>"be_delete is null").paginate :page=>params[:page], :per_page=>40
    
  end

  # GET /vip_styles/1
  # GET /vip_styles/1.xml
  def show
    @vip_style = VipStyle.find(params[:id])
    @vip_details = VipDetail.find(:all,:conditions=>"be_delete is null and vip_style_id=#{params[:id]}").paginate :page=>params[:page], :per_page=>40
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vip_style }
    end
  end

  # GET /vip_styles/new
  # GET /vip_styles/new.xml
  def new
    @vip_style = VipStyle.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vip_style }
    end
  end

  # GET /vip_styles/1/edit
  def edit
    @vip_style = VipStyle.find(params[:id])
  end

  # POST /vip_styles
  # POST /vip_styles.xml
  def create
    @vip_style = VipStyle.new(params[:vip_style])

    respond_to do |format|
      if @vip_style.save
        format.html { redirect_to(@vip_style, :notice => 'VipStyle was successfully created.') }
        format.xml  { render :xml => @vip_style, :status => :created, :location => @vip_style }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vip_style.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vip_styles/1
  # PUT /vip_styles/1.xml
  def update
    @vip_style = VipStyle.find(params[:id])

    respond_to do |format|
      if @vip_style.update_attributes(params[:vip_style])
        format.html { redirect_to(@vip_style, :notice => 'VipStyle was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vip_style.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vip_styles/1
  # DELETE /vip_styles/1.xml
  def destroy
    @vip_style = VipStyle.find(params[:id])
    @vip_style.destroy

    respond_to do |format|
      format.html { redirect_to(vip_styles_url) }
      format.xml  { head :ok }
    end
  end
end
