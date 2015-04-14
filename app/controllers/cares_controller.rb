class CaresController < ApplicationController
  # GET /cares
  # GET /cares.xml
  layout "admins"
  def index
    @cares = Care.find(:all, :order =>'convert(created_at using gbk)desc').paginate :page=>params[:page], :per_page=>40
 

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cares }
    end
  end

  # GET /cares/1
  # GET /cares/1.xml
  def show
    @check_time=params[:check_time]?params[:check_time]:Time.now
    @cares=Care.find_by_sql("select * from  cares where for_time='#{@check_time}'")
  end


  # GET /cares/new
  # GET /cares/new.xml
  def new
    @works = Work.all
  end

  # GET /cares/1/edit
  def edit
    @check_time=params[:check_time]?params[:check_time]:Time.now
    @cares=Care.find_by_sql("select * from  cares where (for_time,'%Y-%m')=(#{@check_time},'%Y-%m')")
  end


  # POST /cares
  # POST /cares.xml
   def create
        @collect_items=params[:collect_item] #接收hash数组
        @collect_items.each do|c|  #循环hash对象
               if c["work_id"]!=""&&c["work_salary_id"]!=""&&c["for_time"]!=""  #判断是否为空对象
                 care=Care.find(:last,:conditions=>"work_id=#{c[:work_id].to_i} and for_time='#{c[:for_time]}' ")
                 care=Care.new  unless care   #实例化一个Care
                 care.work_id=c["work_id"]   #用hash对象的对应值给Care的实例化对象赋值
                 care.for_time=c["for_time"]
                 care.work_salary_id=c["work_salary_id"]
                 care.need_attendance_days=c["need_attendance_days"]
                 care.meal=c["meal"]
                 care.award=c["award"]
                 care.award_detail=c["award_detail"]
                 care.allowance=c["allowance"]
                 care.allowance_detail=c["allowance_detail"]
                 care.lessmoney=c["lessmoney"]
                 care.less_detail=c["less_detail"]
                 care.tax=c["tax"]
                 care.description=c["description"]
                 care.work_start_time=c["work_start_time"]
                 care.work_end_time=c["work_end_time"]                 
                 care.user_id = current_user.id
                 care.save    #保存
               end 
          end
      redirect_to :action=>"index"
  end

  # PUT /cares/1
  # PUT /cares/1.xml
  def update
      for collect_item in params[:collect_item]
      care=Care.find(:last,:conditions=>"work_id=#{collect_item[:work_id].to_i} and for_time='#{collect_item[:for_time]}'")
                care.work_salary_id=collect_item[:work_salary_id]
                 care.need_attendance_days=collect_item[:need_attendance_days]
                 care.meal=collect_item[:meal]
                 care.award=collect_item[:award]
                 care.award_detail=collect_item[:award_detail]
                 care.allowance=collect_item[:allowance]
                 care.allowance_detail=collect_item[:allowance_detail]
                 care.lessmoney=collect_item[:lessmoney]
                 care.less_detail=collect_item[:less_detail]
                 care.tax=collect_item[:tax]
                 care.description=collect_item[:description]
                 care.work_start_time=collect_item[:work_start_time]
                 care.work_end_time=collect_item[:work_end_time]                 
                 care.user_id = current_user.id
                 care.save    #保存
      end
     redirect_to :action=>"index"
  end

  # DELETE /cares/1
  # DELETE /cares/1.xml
  def care_destroy
    @cares=Care.find_by_sql("select * from cares where for_time='#{params[:check_time]}'")
    for care in @cares
    care.destroy
    end
    redirect_to :action=>"index"
  end
  
  
  def care_edit
    @check_time=params[:check_time]?params[:check_time]:Time.now
    @cares=Care.find_by_sql("select * from  cares where for_time='#{@check_time.to_s}'")
  end
  
end
