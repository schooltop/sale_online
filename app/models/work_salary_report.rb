class WorkSalaryReport < ActiveRecord::Base
  set_table_name "cares"
  set_table_name "works"
  set_table_name "work_salaries"
  set_table_name "leaves"
  set_table_name "remarks"
  def self.find_work_salary(workName,date,start=nil,length=nil)
    @conditionSql=""
    unless(workName.eql?("")|| workName.nil?)
      @conditionSql<<" and t1.name like '%#{workName}%'"
    end
    unless(date.eql?("")|| date.nil?)
      @conditionSql<<" and date_format(t1.for_time,'%Y-%m')='#{date}'"
    end
     unless (start.nil? || length.nil?)
      @limit_sql="limit #{start},#{length}"
    end
    find_by_sql("select t1.name as work_name,t1.work_id,date_format(t1.for_time,'%Y-%m') as monthtime,t2.post_salary,t1.need_attendance_days,
t1.meal,t1.allowance,t1.lessmoney,t1.allowance_detail||t1.less_detail as detail,t1.need_attendance_days-t3.leave_days as actual_attendace_days,t1.need_attendance_days-t4.compassionate_leave_days as salary_days,
t2.accumulation,t2.company_social,t2.person_social,round(t2.post_salary+t1.meal+t1.award+t1.allowance+t5.commission-t2.accumulation-t2.post_salary-t1.lessmoney,2) as should_salary,
t1.tax,round(t2.post_salary+t1.meal+t1.award+t1.allowance+t5.commission-t2.accumulation-t2.post_salary-t1.lessmoney-t1.tax,2) as actual_salary
 from
(select work.name,care.work_id,care.work_salary_id,care.for_time,care.need_attendance_days,care.meal,care.award,care.lessmoney,care.tax,care.award_detail,care.less_detail,care.allowance,care.allowance_detail
from cares care left join works work on care.work_id=work.id ) t1
left join
(select salary.id,salary.work_id,salary.post_salary,salary.probation_salary,salary.benefit,
salary.accumulation_fund*inconfig.accumulation_fund_ratio as accumulation,
salary.social_insurance*inconfig.company_ratio as company_social,
salary.social_insurance*inconfig.person_ratio as person_social
from work_salaries salary left join insurance_configs inconfig on salary.insurance_config_id=inconfig.id) t2 on
t1.work_id = t2.work_id and t1.work_salary_id=t2.id
left join
(select work_id,sum(days) as leave_days,date_format(end_time,'%Y-%m') as monthtime from leaves where leave_style_id=1 and pass_state>=1 group by work_id,date_format(end_time,'%Y-%m')) t3
on t2.work_id = t3.work_id
left join
(select le.work_id,sum(le.days) as compassionate_leave_days,date_format(le.end_time,'%Y-%m') as monthtime from leaves le
left join leave_styles ls on le.leave_style_id=ls.id
where (ls.name='事假' or ls.name='病假' or ls.name='产假') and le.leave_style_id=1 and le.pass_state>=1 group by le.work_id,date_format(le.end_time,'%Y-%m'))t4
on t2.work_id = t4.work_id
left join
(select  work_id,date_format(fromtime,'%Y-%m') as monthtime,sum(commission) as commission from remarks group by work_id,date_format(fromtime,'%Y-%m')) t5
on t2.work_id = t5.work_id
where date_format(t1.for_time,'%Y-%m')=t3.monthtime and t3.monthtime=t4.monthtime and t4.monthtime=t5.monthtime and 1=1 #{@conditionSql}  #{@limit_sql}");
  end

  def self.count_work_salary(workName,date)
     @conditionSql=""
    unless(workName.eql?("")|| workName.nil?)
      @conditionSql<<" and t1.name like '%#{workName}%'"
    end
    unless(date.eql?("")|| date.nil?)
      @conditionSql<<" and date_format(t1.for_time,'%Y-%m')='#{date}'"
    end
     count_by_sql("select count(*) from (select t1.name as work_name,t1.work_id,date_format(t1.for_time,'%Y-%m') as monthtime,t2.post_salary,t1.need_attendance_days,
t1.meal,t1.award,t1.allowance,t1.lessmoney,t1.allowance_detail||t1.less_detail as detail,t1.need_attendance_days-t3.leave_days as actual_attendace_days,t1.need_attendance_days-t4.compassionate_leave_days as salary_days,
t2.accumulation,t2.company_social,t2.person_social,round(t2.post_salary+t1.meal+t1.award+t1.allowance+t5.commission-t2.accumulation-t2.post_salary-t1.lessmoney,2) as should_salary,
t1.tax,round(t2.post_salary+t1.meal+t1.award+t1.allowance+t5.commission-t2.accumulation-t2.post_salary-t1.lessmoney-t1.tax,2) as actual_salary
 from
(select work.name,care.work_id,care.work_salary_id,care.for_time,care.need_attendance_days,care.meal,care.award,care.lessmoney,care.tax,care.award_detail,care.less_detail,care.allowance,care.allowance_detail
from cares care left join works work on care.work_id=work.id ) t1
left join
(select salary.id,salary.work_id,salary.post_salary,salary.probation_salary,salary.benefit,
salary.accumulation_fund*inconfig.accumulation_fund_ratio as accumulation,
salary.social_insurance*inconfig.company_ratio as company_social,
salary.social_insurance*inconfig.person_ratio as person_social
from work_salaries salary left join insurance_configs inconfig on salary.insurance_config_id=inconfig.id) t2 on
t1.work_id = t2.work_id and t1.work_salary_id=t2.id
left join
(select work_id,sum(days) as leave_days,date_format(end_time,'%Y-%m') as monthtime from leaves where leave_style_id=1 and pass_state>=1 group by work_id,date_format(end_time,'%Y-%m')) t3
on t2.work_id = t3.work_id
left join
(select le.work_id,sum(le.days) as compassionate_leave_days,date_format(le.end_time,'%Y-%m') as monthtime from leaves le
left join leave_styles ls on le.leave_style_id=ls.id
where (ls.name='事假' or ls.name='病假' or ls.name='产假') and le.leave_style_id=1 and le.pass_state>=1 group by le.work_id,date_format(le.end_time,'%Y-%m'))t4
on t2.work_id = t4.work_id
left join
(select  work_id,date_format(fromtime,'%Y-%m') as monthtime,sum(commission) as commission from remarks group by work_id,date_format(fromtime,'%Y-%m')) t5
on t2.work_id = t5.work_id
where date_format(t1.for_time,'%Y-%m')=t3.monthtime and t3.monthtime=t4.monthtime and t4.monthtime=t5.monthtime  and 1=1 #{@conditionSql} ) m");
  end


end
