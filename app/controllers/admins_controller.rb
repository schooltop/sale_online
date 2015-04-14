class AdminsController < ApplicationController
  layout "admins"  
 #后台首页
  def index
    @orders = Order.paginate( :page => params[:order_page],:per_page => 5, :order =>'convert(created_at using gbk)desc')  
    @service_tasks = ServiceTask.paginate( :page => params[:service_task_page],:per_page => 5, :order =>'convert(situation_id using gbk)desc', :order =>'convert(created_at using gbk)desc')  
    @task_entries = TaskEntry.find_by_sql("select * from task_entries where service_task_id in (select id from service_tasks where situation_id=4)").paginate( :page => params[:task_entry_page],:per_page => 5, :order =>'convert(created_at using gbk)desc')  
    @material_tasks = MaterialTask.find_by_sql("select * from material_tasks where service_task_id in (select id from service_tasks where situation_id=4)").paginate( :page => params[:material_task_page],:per_page => 5, :order =>'convert(situation_id using gbk)desc', :order =>'convert(created_at using gbk)desc',:order => 'convert(cad_statue_id using gbk)')  
    @vips = Vip.paginate( :page => params[:vip_page],:per_page => 5, :order =>'convert(created_at using gbk)desc')  
    @vip_records = VipRecord.paginate( :page => params[:vip_record_page],:per_page => 5, :order =>'convert(created_at using gbk)desc')  
  end
  
  def flow
    
  end
  
  
  def ui
    sorts = parse_sort params[:sort]
    sort=sorts[:name]||"riqi"
    order=sorts[:direction]||"desc"
    if params[:birth]
      begin_time=params[:birth]["(1i)"]+(params[:birth]["(2i)"].to_i<10 ? "0"+params[:birth]["(2i)"] : params[:birth]["(2i)"])
    else
      begin_time=Time.now.strftime("%Y%m")
    end
   
    if(["xml","csv","tsv"].include?(params[:format]))
          @ult_wg_radius=find_ult_wg_radiu(page=nil,{},begin_time,sort,order)
    else
          find_ult_wg_radiu(params[:page]||1,{},begin_time,sort,order)
    end
    @grid = UI::Grid.new(Ultra::UltExternalWg, @ult_wg_radius)
    
 respond_to do |format|
      format.html #index.html.erb
      format.json {render :json =>@ult_wg_radius}
      format.csv {
        columns = Ultra::UltExternalWg.export_ult_wg_radiu()
        datas = @grid.to_csv(columns) do |col,data|
            data[col]
        end
        send_data(datas,:type=>'text/csv;header=persent',:filename => 'ult_wg_radiu.csv')
      }
    end
  end
 
 end 