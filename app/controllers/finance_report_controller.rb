class FinanceReportController < ApplicationController
  @@start=0
  @@length=10
  def index
    @monthTotalPrie=FinanceReport.find_month_finance
   render  :layout=>"admins"
  end

  def customer
     render  :layout=>"admins"
  end
  def grid_data_worker
    @workName=params[:workName]
    @date=params[:datetime]
        p "******************@date***************:#{@date}"
     @spa_finace_data=FinanceReport.spa_finace_report(@workName,@date,@@start,@@length)
     
    count=FinanceReport.spa_finace_report_count(@workName,@date)
        return_data = Hash.new()
        return_data[:totalCount] =count
        return_data[:root] = @spa_finace_data.collect{|u| {
                                            :company_id=>u.company_id,
                                            :total_price=>u.total_price,
                                            :fromtime=>u.fromtime,
                                            :totime=>u.totime,
                                            :work_name=>u.work_name,
                                            :title=>u.title
      } }
      render :text=>return_data.to_json, :layout=>"false"
  end

   def grid_data_customer
    @customerName=params[:customerName]
    @date=params[:datetime]
    p "******************@date***************:#{@date}"
     @spa_customer_finace_data=FinanceReport.spa_finace_customer(@customerName,@date,@@start,@@length)

    count=FinanceReport.spa_finace_customer_count(@customerName,@date)
        return_data = Hash.new()
        return_data[:totalCount] =count
        return_data[:root] = @spa_customer_finace_data.collect{|u| {
                                            :company_id=>u.company_id,
                                            :customer_name=>u.customer_name,
                                            :total_price=>u.total_price,
                                            :fromtime=>u.fromtime,
                                            :totime=>u.totime,
                                            :title=>u.title
      } }
      render :text=>return_data.to_json, :layout=>"false"
  end

   def export_data
     @workName=params[:workName].to_iso
     @date=params[:datetime]
         p "******************exportdate***************:#{@date}"
     @spa_finace_data=FinanceReport.spa_finace_report(@workName,@date)
     respond_to do |format|
      format.csv{
        #全部导出
        cols =worker_header
        data = []
        data << cols.join(',')
        data  << "\r\n"
        @spa_finace_data.each do |record|
          record.pop
          data << record.join(',') << "\r\n"
        end
        @time = Time.now.strftime("%y-%m-%d-%H-%M-%S")
        send_data data.join.to_iso, :type => 'text/csv', :filename => "workerReport_#{@time}.csv", :disposition => 'attachment'
      }
    end
   end

   def export_customerData
     @customerName=params[:customerName].to_iso
     @date=params[:datetime]
         p "******************exportdate***************:#{@date}"
     @spa_finace_data=FinanceReport.spa_finace_customer(@customerName,@date)
     respond_to do |format|
      format.csv{
        #全部导出
        cols =customer_header
        data = []
        data << cols.join(',')
        data  << "\r\n"
        @spa_finace_data.each do |record|
          record.pop
          data << record.join(',') << "\r\n"
        end
        @time = Time.now.strftime("%y-%m-%d-%H-%M-%S")
        send_data data.join.to_iso, :type => 'text/csv', :filename => "customerReport_#{@time}.csv", :disposition => 'attachment'
      }
    end
   end

  protected
  def worker_header
    header = ["工作人员","上工","下工","项目","金额"]
    return header
  end

  def customer_header
    header = ["客户","上工","下工","项目","金额"]
    return header
  end
end
