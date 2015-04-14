class ImportPerformance < ActiveRecord::Base
    set_table_name "performance_price"
    def self.import_performance_data(date)
    connection.execute("insert into  performances(work_id,name,leave_style_id,performance_price,for_time,frommodel,fromids)
select t5.work_id,t5.name,t5.leave_style_id,t5.monthtime,
case when t5.leave_style_id=1 and t5.seniority<2 then round((t5.post_salary/t5.need_attendance_days)*t5.leave_days*0.6,2)
     when t5.leave_style_id=1 and t5.seniority>=2 and t5.seniority<4 then round((t5.post_salary/t5.need_attendance_days)*t5.leave_days*0.7,2)
     when t5.leave_style_id=1 and t5.seniority>=4 and t5.seniority<6 then round((t5.post_salary/t5.need_attendance_days)*t5.leave_days*0.8,2)
     when t5.leave_style_id=1 and t5.seniority>=6 and t5.seniority<8 then round((t5.post_salary/t5.need_attendance_days)*t5.leave_days*0.9,2)
     when t5.leave_style_id=1 and t5.seniority>=8  then round((t5.post_salary/t5.need_attendance_days)*t5.leave_days,2)
     when t5.leave_style_id=9 then t5.leave_days*150
else 0
end as performance_price,'leave' as frommodel,t5.fromids
    from
       (
        select t4.work_id,t4.leave_style_id,t4.monthtime,t4.leave_days,t4.fromids,t4.need_attendance_days,t4.name,date_format(t4.agreementend,'%Y')-date_format(t4.agreementstart,'%Y') as seniority,t4.post_salary from
               (select t1.work_id,t1.leave_style_id,t1.monthtime,t1.leave_days,t1.fromids,t2.need_attendance_days,works.name,works.agreementstart,if (works.agreementend is null,now(),works.agreementend) as agreementend,t2.post_salary from
                       (select work_id,leave_style_id,date_format(end_time,'%Y-%m') monthtime,sum(days) as leave_days,GROUP_CONCAT(id separator ',') as fromids from leaves where pass_state>=1 and date_format(end_time,'%Y-%m')='#{date}' group by work_id,leave_style_id,date_format(end_time,'%Y-%m'))t1
                        left join
                       (select cares.work_id,cares.need_attendance_days,cares.work_start_time,cares.work_end_time,work_salaries.post_salary from cares left join work_salaries on cares.work_id=work_salaries.work_id and cares.work_salary_id=work_salaries.id where date_format(cares.form_time,'%Y-%m')='2014-01')t2 on t1.work_id=t2.work_id
                        left join works on t2.work_id=works.id
                )t4
        )t5
union all
select t1.work_id,t1.name,t1.leave_style_id,t1.monthtime,round(((t1.latehour+t1.leavehour)/8*t2.need_attendance_days)*salary.post_salary,2) as performance_price,
'chcein' as frommodel,t1.fromids
from
(select checkin.work_id,works.name,checkin.leave_style_id,date_format(checkin.for_time,'%Y-%m') as monthtime,GROUP_CONCAT(checkin.id separator ',') as fromids,round(sum(latetime)/60,2) as latehour,round(sum(leavertime)/60,2) as leavehour from checkins checkin
left join works on checkin.work_id=works.id
group by checkin.work_id,works.name,checkin.leave_style_id,date_format(checkin.for_time,'%Y-%m'))t1
left join (select work_id,work_salary_id,need_attendance_days from cares where date_format(form_time,'%Y-%m')='#{date}') t2 on t1.work_id = t2.work_id
left join work_salaries salary on t2.work_id = salary.work_id and t2.work_salary_id=salary.id
where t1.event_id=4")
  end

def self.find_cares_column(date)
    find_by_sql("select t1.work_id,t1.for_time,t1.sick_allowance+t2.overtime_allowance as allowance,
t1.sick_detail||t2.overtime_detail as allowance_detail,t3.lessmoney,t3.less_detail
from
(select per.work_id,per.for_time,per.performance_price as sick_allowance,'病假:'||per.performance_price as sick_detail from performances per where per.leave_style_id=2)t1,
(select per.work_id,per.for_time,per.performance_price as overtime_allowance,'加班:'||per.performance_price as overtime_detail from performances per where per.leave_style_id=9)t2,
(select per.work_id,per.for_time,per.performance_price as  lessmoney,'迟到,早退'|| per.performance_price less_detail from performances per where per.leave_style_id=11)t3
where t1.work_id=t2.work_id and t2.work_id=t3.work_id and t1.for_time=t2.for_time and t2.for_time=t3.for_time and t1.for_time='#{date}'
");
  end

end
