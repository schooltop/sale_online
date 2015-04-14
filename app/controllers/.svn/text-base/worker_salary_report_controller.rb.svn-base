class WorkerSalaryReportController < ApplicationController
  @@start=0
  @@length=10
  def index
    render  :layout=>"admins"
  end

   def grid_data
    @workName=params[:workName]
    @date=params[:datetime]
        p "******************@date***************:#{@date}"
     @work_salary_data=WorkSalaryReport.find_work_salary(@workName,@date,@@start,@@length)
    count=WorkSalaryReport.count_work_salary(@workName,@date)
        return_data = Hash.new()
        return_data[:totalCount] =count
        return_data[:root] = @work_salary_data.collect{|u| {
                                            :work_name=>u.name,
                                            :work_id=>u.work_id,
                                            :monthtime=>u.monthtime,
                                            :post_salary=>u.post_salary,
                                            :need_attendance_days=>u.need_attendance_days,
                                            :meal=>u.meal,
                                            :award=>u.award,
                                            :allowance=>u.allowance,
                                            :lessmoney=>u.lessmoney,
                                            :detail=>u.detail,
                                            :actual_attendace_days=>u.actual_attendace_days,
                                            :salary_days=>u.salary_days,
                                            :accumulation=>u.accumulation,
                                            :company_social=>u.company_social,
                                            :person_social=>u.person_social,
                                            :should_salary=>u.should_salary,
                                            :tax=>u.tax,
                                            :actual_salary=>u.actual_salary,
                                            :description=>u.description
      } }
      render :text=>return_data.to_json, :layout=>"false"
  end

   def exportSalaryData
     @workName=params[:workName].to_iso
     @date=params[:datetime]
         p "******************exportdate***************:#{@date}"
     @salary_data=WorkSalaryReport.find_work_salary(@workName,@date)
     respond_to do |format|
      format.csv{
        #全部导出
        cols =salary_header
        data = []
        data << cols.join(',')
        data  << "\r\n"
        @salary_data.each do |record|
          record.pop
          data << record.join(',') << "\r\n"
        end
        @time = Time.now.strftime("%y-%m-%d-%H-%M-%S")
        send_data data.join.to_iso, :type => 'text/csv', :filename => "salaryReport_#{@time}.csv", :disposition => 'attachment'
      }
    end
   end

  protected
  def salary_header
    header = ["员工ID","时间","合同工资","奖金","应出勤天数","实际出勤天数","计薪天数","公积金","社保(雇主)","社保(员工)","调整(+)","调整(-)","调整原因","餐补",
      "应发工资","个税扣除","实发工资","员工签名","备注"]
    return header
  end
end
