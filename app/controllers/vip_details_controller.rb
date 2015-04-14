class VipDetailsController < ApplicationController
  # GET /vip_details
  # GET /vip_details.xml
   layout "admins"
  def index
    @vip_details = VipDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vip_details }
    end
  end

  # GET /vip_details/1
  # GET /vip_details/1.xml
  def show
    @vip_detail = VipDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vip_detail }
    end
  end

  # GET /vip_details/new
  # GET /vip_details/new.xml
  def new
    @vip_detail = VipDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vip_detail }
    end
  end

  # GET /vip_details/1/edit
  def edit
    @vip_detail = VipDetail.find(params[:id])
  end

  # POST /vip_details
  # POST /vip_details.xml
  def create
    @vip_detail = VipDetail.new(params[:vip_detail])

    respond_to do |format|
      if @vip_detail.save
        format.html { redirect_to(@vip_detail, :notice => 'VipDetail was successfully created.') }
        format.xml  { render :xml => @vip_detail, :status => :created, :location => @vip_detail }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vip_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vip_details/1
  # PUT /vip_details/1.xml
  def update
    @vip_detail = VipDetail.find(params[:id])

    respond_to do |format|
      if @vip_detail.update_attributes(params[:vip_detail])
        format.html { redirect_to(@vip_detail, :notice => 'VipDetail was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vip_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vip_details/1
  # DELETE /vip_details/1.xml
  def destroy
    @vip_detail = VipDetail.find(params[:id])
    @vip_detail.destroy

    respond_to do |format|
      format.html { redirect_to(vip_details_url) }
      format.xml  { head :ok }
    end
  end
end
