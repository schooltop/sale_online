class VipSellReportController < ApplicationController
  @@start=0
  @@length=10
  def index
  @vipSellTotalPrice=VipSellReport.vip_type_data
   render  :layout=>"admins"
  end


  def grid_data
    @vipStyle=params[:vipStyle]
    @workName=params[:workName]
    @date=params[:datetime]
    @vip_sell_data=VipSellReport.vip_sell_report(@vipStyle,@workName,@date,@@start,@@length)
    count=VipSellReport.vip_sell_report_count(@vipStyle,@workName,@date)
        return_data = Hash.new()
        return_data[:totalCount] =count
        return_data[:root] = @vip_sell_data.collect{|u| {
                                            :vip_type=>u.vip_type,
                                            :vip_num=>u.vip_num,
                                            :total_price=>u.total_price,
                                            :deal_time=>u.deal_time,
                                            :name=>u.name
      } }
      render :text=>return_data.to_json, :layout=>"false"
  end

  

   def export_data
    @vipStyle=params[:vipStyle]
    @workName=params[:workName]
    @date=params[:datetime]
         p "******************exportdate***************:#{@date}"
     @vip_sell_data=VipSellReport.vip_sell_report(@vipStyle,@workName,@date)
     respond_to do |format|
      format.csv{
        #全部导出
        cols =vip_style_header
        data = []
        data << cols.join(',')
        data  << "\r\n"
        @vip_sell_data.each do |record|
          record.pop
          data << record.join(',') << "\r\n"
        end
        @time = Time.now.strftime("%y-%m-%d-%H-%M-%S")
        send_data data.join.to_iso, :type => 'text/csv', :filename => "vipSellReport_#{@time}.csv", :disposition => 'attachment'
      }
    end
   end

  protected
  def vip_style_header
    header = ["vip卡类型","卡号","价格","办卡时间","工作人员"]
    return header
  end


end
