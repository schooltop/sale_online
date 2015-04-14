class CommissionConfigsController < ApplicationController
  # GET /commission_configs
  # GET /commission_configs.xml
   layout "admins" 
  def index
   # @commission_configs = CommissionConfig.all
    @commission_configs = CommissionConfig.find_by_sql("select distinct(for_time) for_time,min(user_id) user_id from commission_configs group by for_time,user_id").paginate( :page => params[:page],:per_page => 20, :order =>'convert(for_time using gbk)desc') 
    # @check_time=params[:check_time]?params[:check_time]:Time.now
     # find_by_sql("select * from  commission_configs where for_time(fromtime,'%Y-%m')=#{@check_time(fromtime,'%Y-%m')}")
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @commission_configs }
    end
  end

  def show
    @check_time=params[:check_time]?params[:check_time]:Time.now
    @commission_configs=CommissionConfig.find_by_sql("select * from  commission_configs where for_time='#{@check_time}'")
  end

  def new
    @commission_styles=CommissionStyle.all
  end

  def edit
    @check_time=params[:check_time]?params[:check_time]:Time.now
    @commission_configs=CommissionConfig.find_by_sql("select * from  commission_configs where (for_time,'%Y-%m')=(#{@check_time},'%Y-%m')")
  end

  def create
        @collect_items=params[:collect_item] #接收hash数组
        @collect_items.each do|c|  #循环hash对象
               if c["commission_style_id"]!=""&&c["proprotion"]!=""&&c["for_time"]!=""  #判断是否为空对象
                 commission_config=CommissionConfig.find(:last,:conditions=>"commission_style_id=#{c[:commission_style_id].to_i} and for_time='#{c[:for_time]}'")
                 commission_config=CommissionConfig.new  unless commission_config   #实例化一个CommissionConfig
                 commission_config.commission_style_id=c["commission_style_id"]   #用hash对象的对应值给CommissionConfig的实例化对象赋值
                 commission_config.proprotion=c["proprotion"]
                 commission_config.for_time=c["for_time"]
                 commission_config.user_id = current_user.id
                 commission_config.save    #保存
               end 
          end
      redirect_to :action=>"index"
  end

  def update
      for collect_item in params[:collect_item]
      commission_config=CommissionConfig.find(:last,:conditions=>"commission_style_id=#{collect_item[:commission_style_id].to_i} and for_time='#{collect_item[:for_time]}'")
      commission_config.proprotion=collect_item[:proprotion]
      commission_config.user_id = current_user.id
      commission_config.save
      end
     redirect_to :action=>"index"
  end

  def commission_config_destroy
    @commission_configs=CommissionConfig.find_by_sql("select * from commission_configs where for_time='#{params[:check_time]}'")
    for commission_config in @commission_configs
    commission_config.destroy
    end
    redirect_to :action=>"index"
  end
  
  def commission_config_edit
    @check_time=params[:check_time]?params[:check_time]:Time.now
    @commission_configs=CommissionConfig.find_by_sql("select * from  commission_configs where for_time='#{@check_time.to_s}'")
  end


  
end
