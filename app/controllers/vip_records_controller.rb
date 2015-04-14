class VipRecordsController < ApplicationController
  # GET /vip_records
  # GET /vip_records.xml
  layout "admins"
  def index
    @vip_records = VipRecord.find(:all,:conditions=>"be_delete is null", :order =>'convert(created_at using gbk)desc').paginate :page=>params[:page], :per_page=>40
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vip_records }
    end
  end

   def vip_car_search
    if params[:name]&&params[:name]!=""
      vip=Vip.find(:last,:conditions=>"vip_num='#{params[:name]}'")
      if vip
        flash[:notice] = "你好，以下是查询相关用户信息，请核对后操作。"
        redirect_to :action=>"new",:user_id=>vip.user.id
      else
        flash[:notice] = "你好，该VIP账户#{params[:name]}不存在，请确认用户帐号是否准确。"
        redirect_to :action=>"new"
      end  
    end
  end


  # GET /vip_records/1
  # GET /vip_records/1.xml
  def show
    @vip_record = VipRecord.find(params[:id])
    @order=@vip_record.order
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vip_record }
    end
  end

  # GET /vip_records/new
  # GET /vip_records/new.xml
  def new
    if params[:user_id]
      @user=User.find(params[:user_id])
    end
    @vip_record = VipRecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vip_record }
    end
  end

  # GET /vip_records/1/edit
  def edit
    @vip_record = VipRecord.find(params[:id])
  end

  # POST /vip_records
  # POST /vip_records.xml
  def create
    @vip_record = VipRecord.new(params[:vip_record])

    respond_to do |format|
      if @vip_record.save
        format.html { redirect_to(@vip_record, :notice => 'VipRecord was successfully created.') }
        format.xml  { render :xml => @vip_record, :status => :created, :location => @vip_record }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vip_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vip_records/1
  # PUT /vip_records/1.xml
  def update
    @vip_record = VipRecord.find(params[:id])

    respond_to do |format|
      if @vip_record.update_attributes(params[:vip_record])
        format.html { redirect_to(@vip_record, :notice => 'VipRecord was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vip_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vip_records/1
  # DELETE /vip_records/1.xml
  def destroy
    @vip_record = VipRecord.find(params[:id])
    @vip_record.destroy

    respond_to do |format|
      format.html { redirect_to(vip_records_url) }
      format.xml  { head :ok }
    end
  end
end
